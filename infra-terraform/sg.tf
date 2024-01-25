resource "aws_security_group" "lab" {
  vpc_id      = aws_vpc.vpc-khomp.id
  name        = "lab"
  description = "Allow SSH "

  ingress {
    from_port   = var.ssh-from
    to_port     = var.ssh-to
    protocol    = var.protocol
    cidr_blocks = [var.cidr_blocks]
  }

  ingress {
    from_port   = var.http-from
    to_port     = var.http-to
    protocol    = var.protocol
    cidr_blocks = [var.cidr_block_default]
  }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_block_default]
  }
  tags = {
    "infra" = "khomp-sg"
  }
}