resource "aws_subnet" "teste_subnet" {
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "us-east-2a"
  cidr_block        = "10.0.10.0/24"

  tags = {
    Name = "teste-subnet"
  }
}

resource "aws_subnet" "teste_subnet2" {
  vpc_id            = aws_vpc.test_vpc.id
  availability_zone = "us-east-2a"
  cidr_block        = "10.0.20.0/24"

  tags = {
    Name = "teste-subnet2"
  }
}