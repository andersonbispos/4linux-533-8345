resource "aws_instance" "dbserver1" {
  ami           = "ami-0af6e9042ea5a4e3e"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.subnet2.id

  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "dbserver1"
  }
}