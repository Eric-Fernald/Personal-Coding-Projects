terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  region = var.aws-region-east
  alias  = "us-east-1"
}

provider "aws" {
  region = var.aws-region-west
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

provider "kubernetes" {
  host                   = module.eks-usw2.cluster_endpoint 
  cluster_ca_certificate = base64decode(module.eks-usw2.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.usw2.token
}

data "aws_eks_cluster_auth" "usw2" {
  name = module.eks-usw2.cluster_name
}