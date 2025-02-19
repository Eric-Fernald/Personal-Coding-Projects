data "aws_route53_zone" "selected" {
  name         = var.domain-name
  private_zone = false
}

resource "aws_route53_record" "route53-record-use1" {
  zone_id = data.aws_route53_zone.selected.zone_id #Zone ID is retrieved from the aws_route53_zone data source
  name    = "inventory-api.${var.domain-name}" #Fully Qualified Domain Name for the API using the domain name variable
  type    = "A"

  alias {
    name                   = module.eks-use1.cluster_endpoint #The ALB DNS name of the inventory API is retrieved from the eks-use1 module
    zone_id                = "" #ALB hosted zone ID is automatically detected when `evaluate_target_health` is true
    evaluate_target_health = true #Enable Route 53 health checks for the ALB target
  }
}

resource "aws_route53_record" "route53-record-usw2" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "inventory-api.${var.domain-name}"
  type    = "A"

  alias {
    name                   = module.eks-usw2.cluster_endpoint
    zone_id                = ""
    evaluate_target_health = true
  }
}

resource "aws_route53_health_check" "route53-hc-use1" {
  fqdn               = "inventory-api.${var.domain-name}" #The domain name to check
  port               = 80 #The port to check
  type               = "HTTP" #The type of health check (HTTP)
  request_interval   = 30 #How often to check in seconds
  failure_threshold  = 5 #Number of consecutive failures before marking as unhealthy
  depends_on         = [module.eks-use1] #Ensures the EKS cluster in us-west-2 is created before running the health check
}

resource "aws_route53_health_check" "route53-hc-usw2" {
  fqdn               = "inventory-api.${var.domain-name}"
  port               = 80
  type               = "HTTP"
  request_interval   = 30 
  failure_threshold  = 5
  depends_on         = [module.eks-usw2]
}