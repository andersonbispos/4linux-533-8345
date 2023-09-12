resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_lab.id

  cidr_block = var.map_subnet_faixa[terraform.workspace]

  availability_zone       = format("%sa", var.map_ambientes[terraform.workspace])
  map_public_ip_on_launch = true

  tags = {
    Name = format("public_subnet-%s-%s-%sa", terraform.workspace, var.vpc_name, var.map_ambientes[terraform.workspace])
  }
}

resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rt_public.id
}