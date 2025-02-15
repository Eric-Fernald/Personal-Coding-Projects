resource "kubernetes_ingress" "inventory_api_ingress" {
  metadata {
    name      = "inventory-api-ingress"
    namespace = "default"
    annotations = { #Required for AWS Load Balancer Controller
      "kubernetes.io/ingress.class"                       = "alb"
      "alb.ingress.kubernetes.io/scheme"                  = "internet-facing"
      "alb.ingress.kubernetes.io/target-type"             = "ip"
    }
  }

  spec {
    rule {
      host = "inventory-api.aim.machines.run"
      http {
        path {
          path = "/"
          backend {
            service_name = kubernetes_service.inventory_api_service.metadata[0].name
            service_port = "http"
          }
        }
      }
    }
  }
}