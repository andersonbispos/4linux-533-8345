resource "aws_vpc" "vpc_default" {

  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

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

resource "aws_subnet" "public_subnet" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = cidrsubnet(var.vpc_cidr,24,1)

  availability_zone       = var.subnet_zone
  map_public_ip_on_launch = true

  tags = {
    Name = format("public_subnet-%s", var.vpc_name)
  }
}

resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rt_public.id
}