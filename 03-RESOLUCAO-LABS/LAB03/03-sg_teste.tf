resource "aws_security_group" "sg_vpc_teste" {
  name        = "sg_vpc_teste"
  description = "sg_vpc_teste"

  #vpc_id = aws_vpc.vpc_teste.id
  vpc_id            = "vpc-0b943fd1dc6675d4f"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sg_vpc_teste"
  }
}