resource "aws_subnet" "private_subnet" {

  count = 3

  vpc_id     = aws_vpc.vpc_teste.id
  
  cidr_block = var.private_subnets_cidrs[count.index]

  availability_zone = var.list_subnets_zones[count.index]

  tags = {
    Name = format("private_subnet-%s-%s", var.vpc_name, var.list_subnets_zones[count.index])
  }
}


# accessando a list passando o indice diretamente
/* resource "aws_subnet" "private1_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.private_subnets_cidrs[0]

  availability_zone = var.list_subnets_zones[0]

  tags = {
    Name = format("private_subnet-%s-%s", var.vpc_name, var.list_subnets_zones[0])
  }
}

resource "aws_subnet" "private2_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.private_subnets_cidrs[1]

  availability_zone = var.list_subnets_zones[1]

  tags = {
    Name = format("private_subnet-%s-%s", var.vpc_name, var.list_subnets_zones[1])
  }
}

resource "aws_subnet" "private3_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.private_subnets_cidrs[2]

  availability_zone = var.list_subnets_zones[2]

  tags = {
    Name = format("private_subnet-%s-%s", var.vpc_name, var.list_subnets_zones[2])
  }
} */