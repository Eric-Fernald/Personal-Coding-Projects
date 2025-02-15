module "eks-use1" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = var.eks_cluster_name_use1
  cluster_version = var.eks_cluster_version_use1
  vpc_id          = module.vpc-use1.vpc_id
  subnet_ids      = module.vpc-use1.private_subnets

  manage_aws_auth_configmap = true

  eks_managed_node_group_defaults = {
    ami_type        = var.eks_node_group_ami_type_use1
    instance_types  = var.eks_node_group_instance_types_use1
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name             = var.eks_node_group_name_use1
      desired_capacity = var.eks_node_group_desired_use1
      min_size         = var.eks_node_group_min_use1
      max_size         = var.eks_node_group_max_use1
      version          = var.eks_cluster_version_use1
    }
  }

  providers = {
    aws = aws.us-east-1
  }
}

module "eks-usw2" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = var.eks_cluster_name_usw2
  cluster_version = var.eks_cluster_version_usw2
  vpc_id          = module.vpc-usw2.vpc_id
  subnet_ids      = module.vpc-usw2.private_subnets

  manage_aws_auth_configmap = true

  eks_managed_node_group_defaults = {
    ami_type               = var.eks_node_group_ami_type_usw2
    instance_types         = var.eks_node_group_instance_types_usw2
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name             = var.eks_node_group_name_usw2
      desired_capacity = var.eks_node_group_desired_usw2
      min_size         = var.eks_node_group_min_usw2
      max_size         = var.eks_node_group_max_usw2
      version          = var.eks_cluster_version_usw2
    }
  }

  providers = {
    aws = aws.us-west-2
  }
}