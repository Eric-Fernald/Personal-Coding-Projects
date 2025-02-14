resource "kubernetes_ingress" "inventory_api_ingress" {
  metadata {
    name      = "inventory-api-ingress"
    namespace = "default"
  }

  spec {
    backend {
      service_name = kubernetes_service.inventory_api_service.metadata[0].name
      service_port = kubernetes_service.inventory_api_service.spec[0].port[0].port
    }

    rules {
      host = "inventory-api.yourdomain.com"  # Replace with your domain
      http {
        path {
          path = "/"
          backend {
            service_name = kubernetes_service.inventory_api_service.metadata[0].name
            service_port = kubernetes_service.inventory_api_service.spec[0].port[0].port
          }
        }
      }
    }
  }
}