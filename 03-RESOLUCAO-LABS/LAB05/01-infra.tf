module "vpc" {
  source = "./modules/rede"

  vpc_cidr = "10.10.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = module.vpc.vpc_id
  cidr_block = "10.10.1.0/24"

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

module "web" {
  source = "./modules/instance"

  instance_name = "web"

  instance_zone = aws_subnet.public_subnet.availability_zone
  instance_subnet = aws_subnet.public_subnet.id
  instance_sgs = [module.vpc.sg_id]
}

output "web_ip" {
    value = module.web.instance_public_ip  
}