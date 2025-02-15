data "aws_route53_zone" "selected" {
  name         = "aim.machines.run"
  private_zone = false
}

resource "aws_route53_record" "inventory_api_use1" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "inventory-api.aim.machines.run"
  type    = "A"

  alias {
    name                   = module.eks-use1.cluster_endpoint
    zone_id                 = ""
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "inventory_api_usw2" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "inventory-api.aim.machines.run"
  type    = "A"

  alias {
    name                   = module.eks-usw2.cluster_endpoint
    zone_id                 = ""
    evaluate_target_health = true
  }
}
resource "aws_route53_health_check" "inventory_api_use1" {
  fqdn               = "inventory-api.aim.machines.run"
  port               = 80
  type               = "HTTP"
  request_interval   = 30
  failure_threshold  = 5
  depends_on = [module.eks-use1]
}

resource "aws_route53_health_check" "inventory_api_usw2" {
  fqdn               = "inventory-api.aim.machines.run"
  port               = 80 
  type               = "HTTP" 
  request_interval   = 30
  failure_threshold  = 5
  depends_on = [module.eks-usw2]
}