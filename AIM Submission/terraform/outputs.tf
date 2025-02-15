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