resource "aws_vpc" "vpc_aula09" {

  cidr_block           = var.map_vpc_faixa[terraform.workspace]
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = format("%s-%s", var.vpc_name, terraform.workspace)
  }
}
