resource "aws_vpc" "myvpc" {
  cidr_block           = var.network_address_space
  enable_dns_hostnames = "true"
  tags = {
    Name        = "ADO-VPC-Int"
    Environment = "Dev"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones
data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "mysubnet1" {
  cidr_block              = var.subnet1_address_space
  vpc_id                  = aws_vpc.myvpc.id
  map_public_ip_on_launch = "true"
  availability_zone       = data.aws_availability_zones.available.names[0]
}

resource "aws_subnet" "mysubnet2" {
  cidr_block              = var.subnet2_address_space
  vpc_id                  = aws_vpc.myvpc.id
  map_public_ip_on_launch = "true"
  availability_zone       = data.aws_availability_zones.available.names[1]
}