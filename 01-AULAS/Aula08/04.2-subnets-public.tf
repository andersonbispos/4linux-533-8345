resource "aws_subnet" "public0_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  map_public_ip_on_launch = true

  cidr_block = var.subnet_public_cidr

  availability_zone       = var.subnet_public_zone

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.subnet_public_zone)
  }
}

resource "aws_subnet" "public0_subnet" {
  vpc_id     = aws_vpc.vpc_teste.id
  cidr_block = var.subnet_public_cidr

  availability_zone       = var.subnet_public_zone
  map_public_ip_on_launch = true

  tags = {
    Name = format("public_subnet-%s-%s", var.vpc_name, var.subnet_public_zone)
  }
}

/* resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rt_public.id
} */