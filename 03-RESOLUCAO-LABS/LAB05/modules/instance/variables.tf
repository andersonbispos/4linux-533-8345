variable "instance_zone" {
  description = "Instance zone"
  type        = string
}

variable "instance_subnet" {
  description = "Instance subnet"
  type        = string
}

variable "instance_sgs" {
  description = "Instance security groups"
  type        = list(string)
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
  default     = "instancia"
}

variable "instance_size" {
  description = "Instance Name"
  type        = string
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "Instance ami"
  type        = string
  default     = "ami-024e6efaf93d85776"
}