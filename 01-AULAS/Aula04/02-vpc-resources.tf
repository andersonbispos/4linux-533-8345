resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-02300b91b8d197d03"

  tags = {
    Name = "igw-terraform-aula04"
  }
}

resource "aws_route_table" "rt_public" {
  vpc_id = "vpc-02300b91b8d197d03"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0a9a14f102fde4a0d"
  }

  tags = {
    Name = "rt_public"
  }
}