resource "aws_internet_gateway" "igw" {
  tags = {
    "Name" = "aula-igw"
  }
  vpc_id = aws_vpc.vpc-khomp.id
}