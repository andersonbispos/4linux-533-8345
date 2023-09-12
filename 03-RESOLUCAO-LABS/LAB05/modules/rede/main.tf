resource "aws_vpc" "vpc_default" {

  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_hostname
  enable_dns_support   = var.enable_dns

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_default.id

  tags = {
    Name = format("igw-%s", var.vpc_name)
  }
}

resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc_default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = format("rt-public-%s", var.vpc_name)
  }
}