provider "aws" {
  region = "us-east-1"  # Specify your region
}

# Store Keycloak database credentials in AWS Secrets Manager
resource "aws_secretsmanager_secret" "keycloak_db_secret" {
  name        = "keycloak-database-credentials"
  description = "Credentials for Keycloak database"
}

resource "aws_secretsmanager_secret_version" "keycloak_db_secret_value" {
  secret_id = aws_secretsmanager_secret.keycloak_db_secret.id

  secret_string = jsonencode({
    username = "keycloak_db_user"
    password = "keycloak_db_password"
  })
}

# Create IAM role for the OpenShift Service Account to access Secrets Manager
resource "aws_iam_role" "openshift_role" {
  name = "openshift-keycloak-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action    = "sts:AssumeRole",
        Effect    = "Allow",
        Principal = {
          Service = "eks.amazonaws.com"
        },
      },
    ],
  })
}

# IAM policy allowing access to the secret
resource "aws_iam_policy" "keycloak_secret_access_policy" {
  name        = "keycloak-secret-access-policy"
  description = "Allow access to retrieve Keycloak secrets from Secrets Manager"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "secretsmanager:GetSecretValue",
        ],
        Resource = aws_secretsmanager_secret.keycloak_db_secret.arn,
      },
    ],
  })
}

# Attach the policy to the role
resource "aws_iam_role_policy_attachment" "keycloak_secret_access" {
  role       = aws_iam_role.openshift_role.name
  policy_arn = aws_iam_policy.keycloak_secret_access_policy.arn
}

# Create a Kubernetes secret in OpenShift using the credentials from Secrets Manager
resource "kubernetes_secret" "keycloak_db_credentials" {
  metadata {
    name      = "keycloak-db-secret"
    namespace = "mvcr-dev"
  }

  data = {
    username = base64encode("keycloak_db_user")    # Base64 encode the username
    password = base64encode("keycloak_db_password")  # Base64 encode the password
  }
}

# Create OpenShift Deployment for Keycloak
resource "kubernetes_deployment" "keycloak" {
  metadata {
    name      = "keycloak"
    namespace = "mvcr-dev"
    labels = {
      app = "keycloak"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "keycloak"
      }
    }

    template {
      metadata {
        labels = {
          app = "keycloak"
        }
      }

      spec {
        service_account_name = "openshift-keycloak-sa"

        container {
          name  = "keycloak"
          image = "jboss/keycloak:latest"

          env {
            name  = "DB_USERNAME"
            value_from {
              secret_key_ref {
                name = kubernetes_secret.keycloak_db_credentials.metadata[0].name
                key  = "username"
              }
            }
          }

          env {
            name  = "DB_PASSWORD"
            value_from {
              secret_key_ref {
                name = kubernetes_secret.keycloak_db_credentials.metadata[0].name
                key  = "password"
              }
            }
          }

          port {
            container_port = 8080
          }

          # Optional: Command to start Keycloak with specified db user and password
          command = ["/opt/jboss/tools/docker-entrypoint.sh", "-Dkeycloak.migration.action=import"]
        }
      }
    }
  }
}

# Create a Service for Keycloak
resource "kubernetes_service" "keycloak_service" {
  metadata {
    name      = "keycloak"
    namespace = "mvcr-dev"  # Specify your OpenShift namespace
  }

  spec {
    selector = {
      app = kubernetes_deployment.keycloak.metadata[0].labels["app"]
    }

    port {
      port        = 8080
      target_port = 8080
    }
  }
}

# Output the Keycloak service URL
output "keycloak_service_url" {
  value = "http://${kubernetes_service.keycloak_service.metadata[0].name}.${kubernetes_service.keycloak_service.metadata[0].namespace}.svc.cluster.local:8080"
}
