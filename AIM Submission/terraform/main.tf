provider "aws" {
  region = "us-east-1"
}

# VPC for the Kubernetes Cluster
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "inventory-system-vpc"
  cidr   = "10.0.0.0/16"
  enable_dns_hostnames = true
  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
}

# EKS Cluster
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "inventory-system-cluster"
  cluster_version = "1.24"
  vpc_id          = module.vpc.vpc_id
  subnet_ids      = module.vpc.private_subnets

  manage_aws_auth_configmap = true

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    ami_type               = "AL2_x86_64"
    instance_types         = ["t3.medium"]
    disk_size              = 50
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name          = "inventory-system-node-group"
      desired_capacity = 2
      min_size     = 1
      max_size     = 3
      capacity_type = "ON_DEMAND"
      additional_security_group_ids = []

      update_launch_template_default_version = true

      labels = {
        lifecycle = "general"
      }
      taints = [
        {
          key    = "workloadtype"
          value  = "gpu"
          effect = "NO_SCHEDULE"
        }
      ]
    }
  }
}

# Data source to retrieve authentication token for EKS cluster
data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_name
}

# Kubernetes Provider
provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

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