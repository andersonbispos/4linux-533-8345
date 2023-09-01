resource "aws_instance" "web" {
  ami           = "ami-0cf0e376c672104d6"
  instance_type = "t2.micro"

  associate_public_ip_address = true

  subnet_id = "subnet-0cde453fb546b78f5"

  vpc_security_group_ids = ["sg-0c5f9a70943f3c87b"]

  tags = {
    Name = "Web-instance"
  }
}