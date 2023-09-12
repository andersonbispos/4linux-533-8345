resource "aws_instance" "web" {

  ami           = var.instance_ami
  instance_type = var.instance_size

  associate_public_ip_address = true

  subnet_id              = var.instance_subnet
  vpc_security_group_ids = var.instance_sgs

  tags = {
    Name = var.instance_name
  }
}