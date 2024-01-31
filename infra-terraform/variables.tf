# Referencia de Rede
variable "cidr_block_vpc" {
  default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  default = true
}
variable "enable_dns_support" {
  default = true
}
# Referencia da EC2
variable "instance_count" {
  description = "Númerode instancias a serem criadas"
  default     = 1
}
variable "instance_type" {
  description = "Tipo de instância EC2"
  default     = "t2.micro"
}
variable "instance_ami" {
  description = "Tipo de AMI da instância EC2"
  default     = "ami-01f5dc7c4ff470f77"
}
variable "instance_key" {
  description = "Chave de acesso remoto"
  default     = "khomp"
}
# SSH
variable "ssh-from" {
  default = 22
}
variable "ssh-to" {
  default = 22
}
# HTTP
variable "http-from" {
  default = 80
}
variable "http-to" {
  default = 80
}
variable "protocol" {
  default = "tcp"
}
variable "cidr_blocks" {
  default = "189.113.230.244/32"
}
variable "cidr_block_default" {
  default = "0.0.0.0/0"
}

# HTTPS
variable "https-from" {
  default = 443
}
variable "https-to" {
  default = 443
}
# Subnet
variable "az" {
  default = "us-east-1b"
}
variable "cidr_block_sub" {
  default = "10.0.1.0/24"
}