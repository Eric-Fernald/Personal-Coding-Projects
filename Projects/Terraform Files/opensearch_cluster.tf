# Define the AWS provider configuration.
provider "aws" {
  region = "us-east-1" # Change to your desired AWS region
}

# Define the OpenSearch provider configuration.
provider "opensearch" {
  version = "1.0.0" # Specify the version of the OpenSearch provider
  endpoint = "your-opensearch-endpoint" # Replace with your OpenSearch endpoint
  aws_profile = "your-aws-profile" # Replace with your AWS profile if needed
}

# Create a VPC for the OpenSearch cluster.
resource "aws_vpc" "opensearch_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet within the VPC.
resource "aws_subnet" "opensearch_subnet" {
  count = 2
  vpc_id = aws_vpc.opensearch_vpc.id
  cidr_block = "10.0.1.0/24" # Replace with your desired CIDR block
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)
}

# Create a security group for the OpenSearch cluster.
resource "aws_security_group" "opensearch_sg" {
  name_prefix = "opensearch-sg-"
  vpc_id = aws_vpc.opensearch_vpc.id

  # Define your security group rules here.
  # Example:
  # ingress {
  #   from_port   = 80
  #   to_port     = 80
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
}

# Create an OpenSearch domain.
resource "opensearch_domain" "example" {
  domain_name = "example-opensearch"
  elasticsearch_version = "7.10" # Specify the desired OpenSearch version
  node_to_node_encryption_options {
    enabled = true
  }
  cluster_config {
    instance_type = "r5.large.search"
    instance_count = 2
  }
  vpc_options {
    subnet_ids = aws_subnet.opensearch_subnet[*].id
    security_group_ids = [aws_security_group.opensearch_sg.id]
  }
}

# Output the OpenSearch endpoint.
output "opensearch_endpoint" {
  value = opensearch_domain.example.endpoint
}
