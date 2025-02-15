module "vpc-use1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = var.vpc_name_use1
  cidr = var.vpc_cidr_use1
  azs  = var.vpc_azs_use1
  private_subnets = var.vpc_private_subnets_use1
  public_subnets  = var.vpc_public_subnets_use1
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  providers = {
    aws = aws.us-east-1
  }
}

module "vpc-usw2" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = var.vpc_name_usw2
  cidr = var.vpc_cidr_usw2
  azs  = var.vpc_azs_usw2
  private_subnets = var.vpc_private_subnets_usw2
  public_subnets  = var.vpc_public_subnets_usw2
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  providers = {
    aws = aws.us-west-2
  }
}