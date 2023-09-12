module "vpc" {
  source = "./modules/rede"

  vpc_cidr = "192.168.0.0/16"
}

resource "aws_instance" "web" {

  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"

  associate_public_ip_address = true

  subnet_id              = module.vpc.public_subnet_id
  vpc_security_group_ids = [module.vpc.sg_id]

  tags = {
    Name = "web"
  }
}