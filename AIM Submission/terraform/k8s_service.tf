resource "kubernetes_service" "inventory_api_service" {
  metadata {
    name      = "inventory-api-service"
    namespace = "default"
  }

  spec {
    selector = {
      app = kubernetes_deployment.inventory_api.metadata[0].labels.app
    }

    port {
      port        = 80
      target_port = 8080
      name = "http"
    }

    type = "LoadBalancer"
  }
}