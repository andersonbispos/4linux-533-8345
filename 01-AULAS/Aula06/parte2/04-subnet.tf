resource "aws_subnet" "vpc_teste_subnet1" {

  vpc_id            = aws_vpc.vpc_teste.id
  availability_zone = local.infra_zone
  cidr_block        = "172.31.100.0/24"

  tags = {
    Name = "vpc_teste_subnet1"
  }
}

resource "aws_subnet" "vpc_teste_subnet2" {

  vpc_id            = aws_vpc.vpc_teste.id
  availability_zone = local.infra_zone
  cidr_block        = "172.31.110.0/24"

  tags = {
    Name = "vpc_teste_subnet2"
  }
}