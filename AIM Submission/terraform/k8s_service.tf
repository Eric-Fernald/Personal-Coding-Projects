resource "kubernetes_service" "inventory_api_service" {
  metadata {
    name      = "inventory-api-service"
    namespace = "default"
  }

  spec {
    selector = {
      app = "inventory-api"
    }

    port {
      port        = 80
      target_port = 8080
    }

    type = "LoadBalancer"
  }
}