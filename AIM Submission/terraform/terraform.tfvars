#General settings
aws_region_east = "us-east-1"
aws_region_west = "us-west-2"
domain_name     = "aim.machines.run"

#VPC settings for us-east-1
vpc_name_use1      = "inventory-system-vpc-use1"
vpc_cidr_use1      = "10.0.0.0/16"
vpc_azs_use1         = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_private_subnets_use1 = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
vpc_public_subnets_use1  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

#VPC settings for us-west-2
vpc_name_usw2      = "inventory-system-vpc-usw2"
vpc_cidr_usw2      = "10.1.0.0/16"
vpc_azs_usw2         = ["us-west-2a", "us-west-2b", "us-west-2c"]
vpc_private_subnets_usw2 = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
vpc_public_subnets_usw2  = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]

#EKS settings for us-east-1
eks_cluster_name_use1         = "inventory-system-cluster-use1"
eks_cluster_version_use1      = "1.27"
eks_node_group_name_use1      = "inventory-system-node-group-use1"
eks_node_group_desired_use1   = 2
eks_node_group_min_use1       = 1
eks_node_group_max_use1       = 3
eks_node_group_instance_types_use1 = ["t3.medium"]
eks_node_group_ami_type_use1        = "AL2_x86_64"

#EKS settings for us-west-2
eks_cluster_name_usw2         = "inventory-system-cluster-usw2"
eks_cluster_version_usw2      = "1.27"
eks_node_group_name_usw2      = "inventory-system-node-group-usw2"
eks_node_group_desired_usw2   = 2
eks_node_group_min_usw2       = 1
eks_node_group_max_usw2       = 3
eks_node_group_instance_types_usw2 = ["t3.medium"]
eks_node_group_ami_type_usw2        = "AL2_x86_64"

#Kubernetes settings
kubernetes_image = "docker-image/inventory-api:latest"