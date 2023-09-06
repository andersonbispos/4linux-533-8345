resource "aws_subnet" "private1_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.subnet_private1_cidr

  availability_zone = var.subnet_private1_zone

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.subnet_private1_zone)
  }
}

resource "aws_subnet" "private2_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.subnet_private2_cidr

  availability_zone = var.subnet_private2_zone

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.subnet_private2_zone)
  }
}

resource "aws_subnet" "private3_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.subnet_private3_cidr

  availability_zone = var.subnet_private3_zone

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.subnet_private3_zone)
  }
}