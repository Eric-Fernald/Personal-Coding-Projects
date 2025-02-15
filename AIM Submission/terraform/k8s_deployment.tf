resource "kubernetes_deployment" "inventory_api" {
  metadata {
    name      = "inventory-api"
    namespace = "default"
    labels = {
      app = "inventory-api"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "inventory-api"
      }
    }

    template {
      metadata {
        labels = {
          app = "inventory-api"
        }
      }

      spec {
        container {
          name  = "inventory-api"
          image = "docker-image/inventory-api:latest"
          port {
            container_port = 8080
          }
          #Health Checks
          liveness_probe {
            http_get {
              path = "/health"
              port = 8080
            }
            initial_delay_seconds = 30
            period_seconds      = 10
          }
          readiness_probe {
            http_get {
              path = "/ready"
              port = 8080
            }
            initial_delay_seconds = 30
            period_seconds      = 10
          }
        }
      }
    }
  }
}