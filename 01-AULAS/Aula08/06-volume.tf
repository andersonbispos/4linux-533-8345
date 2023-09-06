//disco com object
resource "aws_ebs_volume" "example" {
  availability_zone = var.object_disk["zone"]
  size              = var.object_disk["size"]

  tags = {
    Name = "web-data"
  }
}

//disco com tupla
/* resource "aws_ebs_volume" "example" {
  availability_zone = var.tuple_disk[0]
  size              = var.tuple_disk[1]

  tags = {
    Name = "web-data"
  }
} */

// disco variaveis especificas
/* resource "aws_ebs_volume" "example" {
  availability_zone = var.disk_zone
  size              = var.disk_size

  tags = {
    Name = "web-data"
  }
} */