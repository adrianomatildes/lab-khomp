resource "aws_instance" "khomp" {
  count                       = var.instance_count
  key_name                    = var.instance_key
  instance_type               = var.instance_type
  ami                         = var.instance_ami
  subnet_id                   = aws_subnet.khomp-pub.id
  security_groups             = [aws_security_group.lab.id]
  depends_on                  = [aws_security_group.lab]
  associate_public_ip_address = true
  tags = {
    "infra" = "asCode"
    "Name"  = "Khomp-${count.index}"
  }
}

output "public_dns" {
  value = [for instance in aws_instance.khomp : instance.public_dns]
}