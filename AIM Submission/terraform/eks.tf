module "eks-use1" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = var.eks-cluster-name-use1
  cluster_version = var.eks-cluster-version-use1
  vpc_id          = module.vpc-use1.vpc_id
  subnet_ids      = module.vpc-use1.private_subnets #Uses private subnets instead of public subnets

  manage_aws_auth_configmap = true #Automatically manage the aws-auth configmap for IAM role access

  eks_managed_node_group_defaults = {
    ami_type        = var.eks-node-group-ami-type-use1
    instance_types  = var.eks-node-group-instance-types-use1
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name             = var.eks-node-group-name-use1
      desired_capacity = var.eks-node-group-desired-use1
      min_size         = var.eks-node-group-min-use1
      max_size         = var.eks-node-group-max-use1
      version          = var.eks-cluster-version-use1
    }
  }

  providers = {
    aws = aws.us-east-1
  }
}

module "eks-usw2" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = var.eks-cluster-name-usw2
  cluster_version = var.eks-cluster-version-usw2
  vpc_id          = module.vpc-usw2.vpc_id
  subnet_ids      = module.vpc-usw2.private_subnets

  manage_aws_auth_configmap = true

  eks_managed_node_group_defaults = {
    ami_type               = var.eks-node-group-ami-type-usw2
    instance_types         = var.eks-node-group-instance-types-usw2
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name             = var.eks-node-group-name-usw2
      desired_capacity = var.eks-node-group-desired-usw2
      min_size         = var.eks-node-group-min-usw2
      max_size         = var.eks-node-group-max-usw2
      version          = var.eks-cluster-version-usw2
    }
  }

  providers = {
    aws = aws.us-west-2
  }
}