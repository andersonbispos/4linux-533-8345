## variaveis geral

variable "map_ambientes" {
  description = "Size a ser utilizada na criacao da instancia WEB"
  type        = map(string)
  default = {
    dev  = "us-east-2"
    prod = "sa-east-1"
  }
}

### variaveis rede

variable "vpc_name" {
  description = "Nome para ser utilizado ao criar a VPC"
  type        = string
  default     = "vpc_lab"
}

variable "map_vpc_faixa" {
  description = "faixas das subnets por ambiente"
  type        = map(string)
  default = {
    prod = "192.168.0.0/16"
    dev  = "10.10.0.0/16"
  }
}

variable "map_subnet_faixa" {
  description = "faixas das subnets por ambiente"
  type        = map(string)
  default = {
    prod = "192.168.10.0/24"
    dev  = "10.10.10.0/24"
  }
}

### variaveis de instancias

variable "map_web_image" {
  description = "Imagem a ser utilizada na criacao da instancia WEB"
  type        = map(string)
  default = {
    dev  = "ami-024e6efaf93d85776" # ami ubuntu us-east-2
    prod = "ami-0af6e9042ea5a4e3e" # ami ubuntu sa-east-1
  }
}

variable "map_web_sizes" {
  description = "Size a ser utilizada na criacao da instancia WEB"
  type        = map(string)
  default = {
    dev  = "t3.micro"
    prod = "t3.medium"
  }
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