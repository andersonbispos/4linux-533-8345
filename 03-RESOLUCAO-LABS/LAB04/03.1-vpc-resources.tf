resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_lab.id

  tags = {
    Name = format("igw-%s-%s", var.vpc_name, terraform.workspace)
  }
}

resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc_lab.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = format("rt-public-%s-%s", var.vpc_name, terraform.workspace)
  }
}