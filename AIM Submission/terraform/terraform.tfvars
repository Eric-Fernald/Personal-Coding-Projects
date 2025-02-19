#General settings
aws-region-east = "us-east-1"
aws-region-west = "us-west-2"
domain-name     = "aim.machines.run"

#VPC settings for us-east-1
vpc-name-use1      = "inventory-system-vpc-use1"
vpc-cidr-use1      = "10.0.0.0/16"
vpc-azs-use1         = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc-private-subnets-use1 = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc-public-subnets-use1  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

#VPC settings for us-west-2
vpc-name-usw2      = "inventory-system-vpc-usw2"
vpc-cidr-usw2      = "10.1.0.0/16"
vpc-azs-usw2         = ["us-west-2a", "us-west-2b", "us-west-2c"]
vpc-private-subnets-usw2 = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
vpc-public-subnets-usw2  = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]

#EKS settings for us-east-1
eks-cluster-name-use1         = "inventory-system-cluster-use1"
eks-cluster-version-use1      = "1.27"
eks-node-group-name-use1      = "inventory-system-node-group-use1"
eks-node-group-desired-use1   = 2
eks-node-group-min-use1       = 1
eks-node-group-max-use1       = 3
eks-node-group-instance-types-use1 = ["t3.medium"]
eks-node-group-ami-type-use1        = "AL2_x86_64"

#EKS settings for us-west-2
eks-cluster-name-usw2         = "inventory-system-cluster-usw2"
eks-cluster-version-usw2      = "1.27"
eks-node-group-name-usw2      = "inventory-system-node-group-usw2"
eks-node-group-desired-usw2   = 2
eks-node-group-min-usw2       = 1
eks-node-group-max-usw2       = 3
eks-node-group-instance-types-usw2 = ["t3.medium"]
eks-node-group-ami-type-usw2        = "AL2_x86_64"

#Kubernetes settings
kubernetes-image = "docker-image/inventory-api:latest"