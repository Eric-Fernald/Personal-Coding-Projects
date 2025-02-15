module "eks-use1" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = "aim-inventory-management-system-use1"
  cluster_version = "1.27"
  vpc_id          = module.vpc-use1.vpc_id
  subnet_ids      = module.vpc-use1.private_subnets

  manage_aws_auth_configmap = true

  eks_managed_node_group_defaults = {
    ami_type               = "AL2_x86_64"
    instance_types         = ["t3.medium"]
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name          = "aim-inventory-management-system-node-group-use1"
      desired_capacity = 2
      min_size     = 1
      max_size     = 3
      version      = "1.27"
    }
  }

  providers = {
    aws = aws.us-east-1
  }
}

module "eks-usw2" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = "aim-inventory-management-system-usw2"
  cluster_version = "1.27"
  vpc_id          = module.vpc-usw2.vpc_id
  subnet_ids      = module.vpc-usw2.private_subnets

  manage_aws_auth_configmap = true

  eks_managed_node_group_defaults = {
    ami_type               = "AL2_x86_64"
    instance_types         = ["t3.medium"]
  }

  eks_managed_node_groups = {
    inventory_system_node_group = {
      name          = "aim-inventory-management-system-node-group-usw2"
      desired_capacity = 2
      min_size     = 1
      max_size     = 3
      version      = "1.27"
    }
  }

  providers = {
    aws = aws.us-west-2
  }
}