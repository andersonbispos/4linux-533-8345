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

## variaveis das subnets public

variable "subnet_public1_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet publica"
  type        = string
  default     = "172.31.10.0/24"
}

variable "subnet_public1_zone" {
  description = "Zone em que sera criada a subnet publica"
  type        = string
  default     = "us-east-2a"
}

variable "subnet_public2_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet publica"
  type        = string
  default     = "172.31.11.0/24"
}

variable "subnet_publi2_zone" {
  description = "Zone em que sera criada a subnet publica"
  type        = string
  default     = "us-east-2b"
}

variable "subnet_public3_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet publica"
  type        = string
  default     = "172.31.12.0/24"
}

variable "subnet_public3_zone" {
  description = "Zone em que sera criada a subnet publica"
  type        = string
  default     = "us-east-2c"
}

## variaveis das subnets private

variable "subnet_private1_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet privada"
  type        = string
  default     = "172.31.20.0/24"
}

variable "subnet_private1_zone" {
  description = "Zone em que sera criada a subnet privada"
  type        = string
  default     = "us-east-2a"
}

variable "subnet_private2_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet privada"
  type        = string
  default     = "172.31.21.0/24"
}

variable "subnet_private2_zone" {
  description = "Zone em que sera criada a subnet privada"
  type        = string
  default     = "us-east-2b"
}

variable "subnet_private3_cidr" {
  description = "Bloco CIDR para ser utilizado na subnet privada"
  type        = string
  default     = "172.31.22.0/24"
}

variable "subnet_private3_zone" {
  description = "Zone em que sera criada a subnet privada"
  type        = string
  default     = "us-east-2c"
}

### variaveis de instancias

variable "default_web_image" {
  description = "Imagem a ser utilizada na criacao da instancia WEB"
  type        = string
  default     = "ami-024e6efaf93d85776" # ami ubuntu us-east-2
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

variable "user_data_path" {
  type    = string
  default = "./scripts/user-data.sh"
}

## volume variables

variable "disk_size" {
  type    = number
  default = 10

  validation {
    condition     = var.disk_size <= 50
    error_message = "O disco deve ser de no maximo 50 GB"
  }
}