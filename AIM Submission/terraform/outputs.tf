output "cluster_name_use1" {
  description = "EKS cluster name in us-east-1"
  value       = module.eks-use1.cluster_name
}

output "cluster_endpoint_use1" {
  description = "Endpoint for EKS control plane in us-east-1"
  value       = module.eks-use1.cluster_endpoint
}

output "cluster_id_use1" {
  description = "EKS cluster ID in us-east-1"
  value       = module.eks-use1.cluster_id
}

output "cluster_name_usw2" {
  description = "EKS cluster name in us-west-2"
  value       = module.eks-usw2.cluster_name
}

output "cluster_endpoint_usw2" {
  description = "Endpoint for EKS control plane in us-west-2"
  value       = module.eks-usw2.cluster_endpoint
}

output "cluster_id_usw2" {
  description = "EKS cluster ID in us-west-2"
  value       = module.eks-usw2.cluster_id
}

output "waf_id" {
  value = aws_wafv2_web_acl.inventory_waf.id
  description = "WAF Web ACL ID"
}

output "shield_id" {
  value = aws_shield_protection.inventory_shield.id
  description = "Shield proection ID"
}

output "user_pool_id" {
  value = aws_cognito_user_pool.inventory_user_pool.id
  description = "ID of the Cognito User Pool"
}

output "app_client_id" {
  value = aws_cognito_user_pool_client.inventory_app_client.id
  description = "ID of the Cognito App Client"
}

output "cognito_domain" {
  value = aws_cognito_user_pool_domain.inventory_domain.domain
  description = "Domain of the Cognito User Pool"
}