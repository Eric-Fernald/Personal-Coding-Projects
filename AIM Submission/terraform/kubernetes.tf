resource "kubernetes_deployment" "inventory_api_use1" {
  provider = kubernetes
  metadata {
    name      = "inventory-management"
    namespace = "default"
    labels = {
      app = "inventory-management"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "inventory-management"
      }
    }

    template {
      metadata {
        labels = {
          app = "inventory-management"
        }
      }

      spec {
        container {
          name  = "inventory-management"
          image = var.kubernetes-image
          port {
            container_port = 8080
          }
          liveness_probe { #liveness probe to check if the container is running
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
    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_surge       = "25%"
        max_unavailable = "25%"
      }
    }
  }
}

resource "kubernetes_service" "api-service-use1" {
  provider = kubernetes
  metadata {
    name      = "inventory-api-service"
    namespace = "default"
  }

  spec {
    selector = {
      app = kubernetes_deployment.inventory_api_use1.metadata[0].labels.app
    }

    port {
      port        = 80
      target_port = 8080
      name = "http"
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_ingress" "api-ingress-use1" {
  provider = kubernetes
  metadata {
    name      = "api-ingress-use1"
    namespace = "default"
    annotations = {
      "kubernetes.io/ingress.class"             = "alb"
      "alb.ingress.kubernetes.io/scheme"        = "internet-facing"
      "alb.ingress.kubernetes.io/target-type"   = "ip"
    }
  }

  spec {
    rule {
      host = var.domain-name
      http {
        path {
          path = "/"
          backend {
            service_name = kubernetes_service.inventory_api_service_use1.metadata[0].name
            service_port = "http"
          }
        }
      }
    }
  }
}

#Kubernetes Resources for us-west-2
resource "kubernetes_deployment" "api-usw2" {
  provider = kubernetes.usw2
  metadata {
    name      = "api-usw2"
    namespace = "default"
    labels = {
      app = "inventory-management"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "inventory-management"
      }
    }

    template {
      metadata {
        labels = {
          app = "inventory-management"
        }
      }

      spec {
        container {
          name  = "inventory-management"
          image = var.kubernetes_image
          port {
            container_port = 8080
          }
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
    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_surge       = "25%"
        max_unavailable = "25%"
      }
    }
  }
}

resource "kubernetes_service" "api-service-usw2" {
  provider = kubernetes.usw2
  metadata {
    name      = "inventory-api-service"
    namespace = "default"
  }

  spec {
    selector = {
      app = kubernetes_deployment.inventory_api_usw2.metadata[0].labels.app
    }

    port {
      port        = 80
      target_port = 8080
      name = "http"
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_ingress" "api-ingress-usw2" {
  provider = kubernetes.usw2
  metadata {
    name      = "inventory-api-ingress"
    namespace = "default"
    annotations = {
      "kubernetes.io/ingress.class"            = "alb"
      "alb.ingress.kubernetes.io/scheme"       = "internet-facing"
      "alb.ingress.kubernetes.io/target-type"  = "ip"
    }
  }

  spec {
     rule {
      host = var.domain_name
      http {
        path {
          path = "/"
          backend {
            service_name = kubernetes_service.inventory_api_service_usw2.metadata[0].name
            service_port = "http"
          }
        }
      }
    }
  }
}