## variaveis geral

variable "map_ambientes" {
  description = "Size a ser utilizada na criacao da instancia WEB"
  type        = map(string)
  default = {
    dev  = "us-east-2"
    #prod  = "us-east-2"
    prod = "sa-east-1"
  }
}

### variaveis rede

variable "vpc_cidr" {
  description = "Bloco CIDR para ser utilizado ao criar a VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Nome para ser utilizado ao criar a VPC"
  type        = string
  default     = "vpc_aula09"
}

variable "map_vpc_faixa" {
  description = "faixas das subnets por ambiente"
  type        = map(string)
  default = {
    prod = "192.168.0.0/16"
    dev  = "10.10.0.0/16"
  }
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

variable "map_web_image" {
  description = "Imagem a ser utilizada na criacao da instancia WEB"
  type        = map(string)
  default     = {
    dev = "ami-024e6efaf93d85776" # ami ubuntu us-east-2
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