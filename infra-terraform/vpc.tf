resource "aws_vpc" "vpc-khomp" {
  tags = {
    "Name" = "vpc-khomp"
  }
  cidr_block           = var.cidr_block_vpc
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
}