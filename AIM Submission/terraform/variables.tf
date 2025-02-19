variable "aws-region-east" {
  type        = string
  description = "AWS region for the primary deployment"
}

variable "aws-region-west" {
  type        = string
  description = "AWS region for the secondary/failover deployment"
}

variable "domain-name" {
  type        = string
  description = "The domain name for the application"
}

#VPC Variables
variable "vpc-name-use1" {
  type        = string
  description = "Name of the VPC in us-east-1"
}

variable "vpc-cidr-use1" {
  type        = string
  description = "CIDR block for the VPC in us-east-1"
}

variable "vpc-azs-use1" {
  type        = list(string)
  description = "List of availability zones for the VPC in us-east-1"
}

variable "vpc-private-subnets-use1" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets in us-east-1"
}

variable "vpc-public-subnets-use1" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets in us-east-1"
}

variable "vpc-name-usw2" {
  type        = string
  description = "Name of the VPC in us-west-2"
}

variable "vpc-cidr-usw2" {
  type        = string
  description = "CIDR block for the VPC in us-west-2"
}

variable "vpc-azs-usw2" {
  type        = list(string)
  description = "List of availability zones for the VPC in us-west-2"
}

variable "vpc-private-subnets-usw2" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets in us-west-2"
}

variable "vpc-public-subnets-usw2" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets in us-west-2"
}

#EKS Variables
variable "eks-cluster-name-use1" {
  type        = string
  description = "Name of the EKS cluster in us-east-1"
}

variable "eks-cluster-version-use1" {
  type        = string
  description = "Kubernetes version for the EKS cluster in us-east-1"
}

variable "eks-node-group-name-use1" {
  type        = string
  description = "Name of the EKS node group in us-east-1"
}

variable "eks-node-group-desired-use1" {
  type        = number
  description = "Desired capacity of the EKS node group in us-east-1"
}

variable "eks-node-group-min-use1" {
  type        = number
  description = "Minimum size of the EKS node group in us-east-1"
}

variable "eks-node-group-max-use1" {
  type        = number
  description = "Maximum size of the EKS node group in us-east-1"
}

variable "eks-node-group-instance-types-use1" {
  type        = list(string)
  description = "List of instance types for the EKS node group in us-east-1"
}

variable "eks-node-group-ami-type-use1" {
  type        = string
  description = "AMI type for the EKS node group in us-east-1"
}

variable "eks-cluster-name-usw2" {
  type        = string
  description = "Name of the EKS cluster in us-west-2"
}

variable "eks-cluster-version-usw2" {
  type        = string
  description = "Kubernetes version for the EKS cluster in us-west-2"
}

variable "eks-node-group-name-usw2" {
  type        = string
  description = "Name of the EKS node group in us-west-2"
}

variable "eks-node-group-desired-usw2" {
  type        = number
  description = "Desired capacity of the EKS node group in us-west-2"
}

variable "eks-node-group-min-usw2" {
  type        = number
  description = "Minimum size of the EKS node group in us-west-2"
}

variable "eks-node-group-max-usw2" {
  type        = number
  description = "Maximum size of the EKS node group in us-west-2"
}

variable "eks-node-group-instance-types-usw2" {
  type        = list(string)
  description = "List of instance types for the EKS node group in us-west-2"
}

variable "eks-node-group-ami-type-usw2" {
  type        = string
  description = "AMI type for the EKS node group in us-west-2"
}

variable "kubernetes-image" {
  type        = string
  description = "Docker image to deploy to Kubernetes"
}