## variaveis da VPC

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar a VPC"
  type        = string
  default     = "172.31.0.0/16"
}

variable "vpc_name" {
  description = "Nome para ser utilizado ao criar a VPC"
  type        = string
  default     = "vpc_aula06"
}

## variaveis das subnets

variable "subnet_public_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet publica"
  type        = string
  default     = "172.31.10.0/24"
}

variable "subnet_public_zone" {
  description = "Zone em que sera criada a subnet publica"
  type        = string
  default     = "us-east-2a"
}

variable "subnet_private_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet privada"
  type        = string
  default     = "172.31.20.0/24"
}

variable "subnet_private_zone" {
  description = "Zone em que sera criada a subnet privada"
  type        = string
  default     = "us-east-2b"
}

### variaveis de instancias

variable "default_web_image" {
  description = "Imagem a ser utilizada na criacao da instancia WEB"
  type        = string
  default     = "ami-0af6e9042ea5a4e3e" # ami ubuntu us-east-2
}

variable "default_web_size" {
  description = "Size a ser utilizada na criacao da instancia WEB"
  type        = string
  default     = "t3.micro"
}

variable "instance_public_ip" {
  description = "Define se a instancia deve ter ip publico"
  type        = bool
  default     = true
}