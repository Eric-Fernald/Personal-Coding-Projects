#Web Access Control List
resource "aws_wafv2_web_acl" "inventory_waf" {
  name  = "inventory-waf"
  description = "Web ACL for Inventory Application"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

  rule {
    name     = "AWS-ManagedRulesCommonRuleSet"
    priority = 10
    action {
      allow {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-ManagedRulesCommonRuleSet"
      sampled_requests_enabled   = true
    }
  }

    rule {
    name     = "AWS-ManagedRulesSQLiRuleSet"
    priority = 20
    action {
      allow {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesSQLiRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-ManagedRulesSQLiRuleSet"
      sampled_requests_enabled   = true
    }
  }

    rule {
    name     = "AWS-ManagedRulesXSSRuleSet"
    priority = 30
    action {
      allow {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesXSSRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-ManagedRulesXSSRuleSet"
      sampled_requests_enabled   = true
    }
  }
   visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "inventory-waf"
    sampled_requests_enabled   = true
  }
}

#Associate the Web ACL with the Load Balancer
resource "aws_wafv2_web_acl_association" "inventory_waf_association" {
  resource_arn = module.eks-use1.cluster_endpoint_use1
  web_acl_arn  = aws_wafv2_web_acl.inventory_waf.arn
}