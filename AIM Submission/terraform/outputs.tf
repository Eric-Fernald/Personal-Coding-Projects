output "cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "kubeconfig" {
  description = "Kubernetes configuration to connect to the cluster"
  value       = module.eks.kubeconfig
  sensitive   = true
}

output "cluster_id" {
  description = "EKS cluster ID"
  value = module.eks.cluster_id
}