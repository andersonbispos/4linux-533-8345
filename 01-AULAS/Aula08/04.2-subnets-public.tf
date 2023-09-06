resource "aws_subnet" "public_subnets" {

  for_each = var.public_subnets_defs

  vpc_id                  = aws_vpc.vpc_teste.id
  map_public_ip_on_launch = true

  availability_zone = each.key
  cidr_block        = each.value

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, each.key)
  }
}


# acessando o map diretamente
/* resource "aws_subnet" "public_subnets" {
  
  vpc_id                  = aws_vpc.vpc_teste.id
  map_public_ip_on_launch = true

  availability_zone = var.map_subnets_zones["public_subnet0"]

  cidr_block = var.map_subnets_faixas["public_subnet0"]

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.map_subnets_zones["public_subnet0"])
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.vpc_teste.id
  map_public_ip_on_launch = true

  availability_zone = var.map_subnets_zones["public_subnet1"]

  cidr_block = var.map_subnets_faixas["public_subnet1"]

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.map_subnets_zones["public_subnet1"])
  }
} */


/* resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rt_public.id
} */