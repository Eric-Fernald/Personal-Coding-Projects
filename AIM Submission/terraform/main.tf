provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.cluster.token
}

#EKS Cluster
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "inventory-system-cluster"
  cluster_version = "1.24"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
}

#VPC for the Kubernetes Cluster
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "inventory-system-vpc"
  cidr   = "10.0.0.0/16"
  enable_dns_hostnames = true
}