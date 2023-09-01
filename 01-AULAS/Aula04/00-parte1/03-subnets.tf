resource "aws_subnet" "public_subnet" {
  vpc_id     = "vpc-02300b91b8d197d03"
  cidr_block = "10.0.1.0/24"

  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = "subnet-0cde453fb546b78f5"
  route_table_id = "rtb-08766079829081f82"
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = "vpc-02300b91b8d197d03"
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-2a"

  tags = {
    Name = "private_subnet"
  }
}