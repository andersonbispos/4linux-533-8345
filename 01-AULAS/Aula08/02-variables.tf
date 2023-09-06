## variaveis da VPC

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar a VPC"
  type        = string
  default     = "172.31.0.0/16"
}

variable "vpc_name" {
  description = "Nome para ser utilizado ao criar a VPC"
  type        = string
  default     = "vpc_aula08"
}

## variaveis das subnets public

variable "map_subnets_zones" {
  description = "zonas das subnets publicas"
  type        = map(string)
  default = {
    public_subnet0 = "us-east-2a"
    public_subnet1 = "us-east-2b"
  }
}

variable "map_subnets_faixas" {
  description = "zonas das subnets publicas"
  type        = map(string)
  default = {
    public_subnet0 = "172.31.10.0/24"
    public_subnet1 = "172.31.11.0/24"
  }
}

variable "public_subnets_defs" {
  description = "zonas das subnets publicas"
  type        = map(string)
  default = {
    us-east-2a = "172.31.10.0/24"
    us-east-2b = "172.31.11.0/24"
  }
}

## variaveis das subnets private

variable "list_subnets_zones" {
  description = "zones onde serão criadas as subnets"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

variable "private_subnets_cidrs" {
  description = "cidrs onde serão criadas as subnets"
  type        = list(string)
  default     = ["172.31.20.0/24", "172.31.21.0/24"]
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