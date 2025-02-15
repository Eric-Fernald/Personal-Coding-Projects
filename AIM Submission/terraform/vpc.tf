module "vpc-use1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "inventory-system-vpc-use1"
  cidr = "10.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
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

  name = "inventory-system-vpc-usw2"
  cidr = "10.1.0.0/16"
  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets  = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true

  providers = {
    aws = aws.us-west-2
  }
}