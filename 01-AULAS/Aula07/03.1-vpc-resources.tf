resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_teste.id

  tags = {
    Name = format("igw-%s", var.vpc_name)
  }
}

resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc_teste.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "rt_public"
  }
}