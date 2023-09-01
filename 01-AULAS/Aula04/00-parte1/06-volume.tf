resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-2a"
  size              = 10

  tags = {
    Name = "web-data"
  }
}

resource "aws_volume_attachment" "ebs_att_web_data" {
  device_name = "/dev/sdh"
  volume_id   = "vol-0bcb65c22cbdf15ca"
  instance_id = "i-0ced3ff67c64bdfcd"
}