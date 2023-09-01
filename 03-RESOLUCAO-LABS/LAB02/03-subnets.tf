resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.tf-vpc-lab.id
  cidr_block = "192.168.10.0/24"

  availability_zone = "sa-east-1b"
  #map_public_ip_on_launch = true

  tags = {
    Name = "subnet1"
  }
}

resource "aws_route_table_association" "rt_public_subnet1_association" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rt_public.id
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.tf-vpc-lab.id
  cidr_block = "192.168.20.0/24"

  availability_zone = "sa-east-1c"

  tags = {
    Name = "subnet2"
  }
}

resource "aws_route_table_association" "rt_public_subnet2_association" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rt_public.id
}