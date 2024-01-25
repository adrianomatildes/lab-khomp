resource "aws_subnet" "khomp-pub" {
  tags = {
    "Name" = "khomp-pub"
  }
  vpc_id                  = aws_vpc.vpc-khomp.id
  availability_zone       = var.az
  cidr_block              = var.cidr_block_sub
  map_public_ip_on_launch = "true"
}