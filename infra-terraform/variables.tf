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
  default = "khomp"
}