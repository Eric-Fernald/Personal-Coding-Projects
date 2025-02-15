variable "aws_region_east" {
  type        = string
  description = "AWS region for the primary deployment (e.g., us-east-1)"
}

variable "aws_region_west" {
  type        = string
  description = "AWS region for the secondary/failover deployment (e.g., us-west-2)"
}

variable "domain_name" {
  type        = string
  description = "The domain name for the application (e.g., yourdomain.com)"
}

#VPC Variables
variable "vpc_name_use1" {
  type        = string
  description = "Name of the VPC in us-east-1"
}

variable "vpc_cidr_use1" {
  type        = string
  description = "CIDR block for the VPC in us-east-1"
}

variable "vpc_azs_use1" {
  type        = list(string)
  description = "List of availability zones for the VPC in us-east-1"
}

variable "vpc_private_subnets_use1" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets in us-east-1"
}

variable "vpc_public_subnets_use1" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets in us-east-1"
}

variable "vpc_name_usw2" {
  type        = string
  description = "Name of the VPC in us-west-2"
}

variable "vpc_cidr_usw2" {
  type        = string
  description = "CIDR block for the VPC in us-west-2"
}

variable "vpc_azs_usw2" {
  type        = list(string)
  description = "List of availability zones for the VPC in us-west-2"
}

variable "vpc_private_subnets_usw2" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets in us-west-2"
}

variable "vpc_public_subnets_usw2" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets in us-west-2"
}

#EKS Variables
variable "eks_cluster_name_use1" {
  type        = string
  description = "Name of the EKS cluster in us-east-1"
}

variable "eks_cluster_version_use1" {
  type        = string
  description = "Kubernetes version for the EKS cluster in us-east-1"
}

variable "eks_node_group_name_use1" {
  type        = string
  description = "Name of the EKS node group in us-east-1"
}

variable "eks_node_group_desired_use1" {
  type        = number
  description = "Desired capacity of the EKS node group in us-east-1"
}

variable "eks_node_group_min_use1" {
  type        = number
  description = "Minimum size of the EKS node group in us-east-1"
}

variable "eks_node_group_max_use1" {
  type        = number
  description = "Maximum size of the EKS node group in us-east-1"
}

variable "eks_node_group_instance_types_use1" {
  type        = list(string)
  description = "List of instance types for the EKS node group in us-east-1"
}

variable "eks_node_group_ami_type_use1" {
  type        = string
  description = "AMI type for the EKS node group in us-east-1"
}

variable "eks_cluster_name_usw2" {
  type        = string
  description = "Name of the EKS cluster in us-west-2"
}

variable "eks_cluster_version_usw2" {
  type        = string
  description = "Kubernetes version for the EKS cluster in us-west-2"
}

variable "eks_node_group_name_usw2" {
  type        = string
  description = "Name of the EKS node group in us-west-2"
}

variable "eks_node_group_desired_usw2" {
  type        = number
  description = "Desired capacity of the EKS node group in us-west-2"
}

variable "eks_node_group_min_usw2" {
  type        = number
  description = "Minimum size of the EKS node group in us-west-2"
}

variable "eks_node_group_max_usw2" {
  type        = number
  description = "Maximum size of the EKS node group in us-west-2"
}

variable "eks_node_group_instance_types_usw2" {
  type        = list(string)
  description = "List of instance types for the EKS node group in us-west-2"
}

variable "eks_node_group_ami_type_usw2" {
  type        = string
  description = "AMI type for the EKS node group in us-west-2"
}

variable "kubernetes_image" {
  type        = string
  description = "Docker image to deploy to Kubernetes"
}