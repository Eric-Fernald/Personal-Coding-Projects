terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" #Can be any version 5.0 or higher, but less than 6.0
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0" #Can be any version 2.0 or higher, but less than 3.0
    }
  }
}

provider "aws" {
  region = var.aws_region_east
  alias  = "us-east-1"
}

provider "aws" {
  region = var.aws_region_west
  alias  = "us-west-2"
}

provider "kubernetes" {
  host                   = module.eks-use1.cluster_endpoint #Kubernetes API server endpoint retrieved from the EKS module
  cluster_ca_certificate = base64decode(module.eks-use1.cluster_certificate_authority_data) #Cluster CA certificate which is decoded from base64
  token                  = data.aws_eks_cluster_auth.use1.token #Authentication token for the Kubernetes cluster
}

data "aws_eks_cluster_auth" "use1" {
  name = module.eks-use1.cluster_name
}