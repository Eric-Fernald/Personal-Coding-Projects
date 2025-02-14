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
        }
      }
    }
  }
}