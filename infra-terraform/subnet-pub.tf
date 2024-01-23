resource "aws_subnet" "khomp-pub" {
  tags = {
    "Name" = "khomp-pub"
  }
  vpc_id                  = aws_vpc.vpc-khomp.id
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
}