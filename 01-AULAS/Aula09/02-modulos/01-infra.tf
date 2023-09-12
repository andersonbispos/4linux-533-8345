module "vpc" {
  source = "./modules/rede"

  vpc_cidr = "192.168.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "192.168.10.0/24"

  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_route_table_association" "rt_public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = module.vpc.rt_public_id
}

resource "aws_instance" "web" {

  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"

  associate_public_ip_address = true

  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [module.vpc.sg_id]

  tags = {
    Name = "web"
  }
}