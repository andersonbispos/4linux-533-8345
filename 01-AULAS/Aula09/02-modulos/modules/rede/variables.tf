## variaveis da VPC

variable "vpc_name" {
  description = "Nome para ser utilizado ao criar a VPC"
  type        = string
  default     = "vpc_modulo"
}

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar a VPC"
  type        = string
}

variable "subnet_zone" {
  description = "Zona onde deve ser criada a subnet default"
  type = string
  default = "us-east-2a"
}
