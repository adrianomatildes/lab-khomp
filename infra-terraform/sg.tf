resource "aws_security_group" "lab" {
  vpc_id      = aws_vpc.vpc-khomp.id
  name        = "lab"
  description = "Allow SSH "

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["189.113.231.217/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    "infra" = "khomp-sg"
  }
}