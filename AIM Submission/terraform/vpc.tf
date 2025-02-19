module "vpc-use1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = var.vpc-name-use1
  cidr = var.vpc-cidr-use1
  azs  = var.vpc-azs-use1
  private_subnets = var.vpc-private-subnets-use1
  public_subnets  = var.vpc-public-subnets-use1
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

  name = var.vpc-name-usw2
  cidr = var.vpc-cidr-usw2
  azs  = var.vpc-azs-usw2
  private_subnets = var.vpc-private-subnets-usw2
  public_subnets  = var.vpc-public-subnets-usw2
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  providers = {
    aws = aws.us-west-2
  }
}