resource "aws_instance" "vm1" {
  ami           = "ami-024e6efaf93d85776" # <- ubuntu 22.04 - us-east-2
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-02257f41773295c4f"]

  tags = {
    Name = "vm1"
  }
}