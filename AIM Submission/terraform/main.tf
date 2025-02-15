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
  region = "us-east-1"
  alias  = "us-east-1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "us-west-2"
}

provider "kubernetes" {
  host                   = module.eks-use1.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks-use1.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.use1.token
}

data "aws_eks_cluster_auth" "use1" {
  name = module.eks-use1.cluster_name
}