resource "aws_vpc" "myvpc" {
  cidr_block           = var.network_address_space
  enable_dns_hostnames = "true"
  tags = {
    Name        = "ADO-VPC-Int"
    Environment = "Dev"
  }
}