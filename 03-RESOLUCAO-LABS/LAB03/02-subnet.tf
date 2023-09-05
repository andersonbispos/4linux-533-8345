resource "aws_subnet" "vpc_teste_subnet1" {
  #vpc_id            = aws_vpc.vpc_teste.id
  vpc_id            = "vpc-0b943fd1dc6675d4f"
  availability_zone = "us-east-2a"
  cidr_block        = "192.168.10.0/24"

  tags = {
    Name = "vpc_teste_subnet1"
  }
}

resource "aws_subnet" "vpc_teste_subnet2" {
  vpc_id            = "vpc-0b943fd1dc6675d4f"
  availability_zone = "us-east-2a"
  cidr_block        = "192.168.20.0/24"

  tags = {
    Name = "vpc_teste_subnet2"
  }
}