resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.tf-vpc-lab.id

  tags = {
    Name = "igw-tf-vpc-lab"
  }
}

resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.tf-vpc-lab.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "rt_public"
  }
}