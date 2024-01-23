resource "aws_route_table" "khomp-rtp" {
  tags = {
    "Name" = "khomp-rtp"
  }
  vpc_id = aws_vpc.vpc-khomp.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "khomp-rta" {
  route_table_id = aws_route_table.khomp-rtp.id
  subnet_id      = aws_subnet.khomp-pub.id
}