## variaveis da VPC

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar a VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nome para ser utilizado ao criar a VPC"
  type        = string
  default     = "vpc_modulo"
}

variable "enable_hostname" {
  description = "Enable DNS hostname"
  type = bool
  default = true
}

variable "enable_dns" {
  description = "Enable DNS"
  type = bool
  default = true
}
