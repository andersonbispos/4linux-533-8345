resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = "10.0.1.0/24"

  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.rt_public.id
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.vpc_terraform.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-2a"

  tags = {
    Name = "private_subnet"
  }
}