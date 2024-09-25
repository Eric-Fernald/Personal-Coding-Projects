# Create a VPC for the OpenSearch cluster.
resource "aws_vpc" "opensearch_vpc" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet within the VPC.
resource "aws_subnet" "opensearch_subnet" {
  count = 3
  vpc_id = aws_vpc.opensearch_vpc.id
  cidr_block = "10.10.0.0/19"
  availability_zone = element(["us-east-2a", "us-east-2b", "us-east-2c"], count.index)
}

# Create a security group for the OpenSearch cluster if needed.
resource "aws_security_group" "opensearch_sg" {
  name_prefix = "opensearch-v1dot3"
  vpc_id = aws_vpc.opensearch_vpc.id
  description = "Allow inbound traffic from the OpenSearch cluster"
  
   ingress {
     from_port   = 80
     to_port     = 80
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]
   }
}

# Create an OpenSearch domain.
resource "opensearch_domain" "example" {
  domain_name = "opensearch-v1dot3"
  elasticsearch_version = "7.10"
  node_to_node_encryption_options {
    enabled = true
  }
  cluster_config {
    instance_type = "r6g.large.search"
    instance_count = 3
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
