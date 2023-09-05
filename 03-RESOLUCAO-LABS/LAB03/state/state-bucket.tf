resource "aws_s3_bucket" "state_bucket" {
  bucket = "state-bucket-982349234"

  force_destroy = true # em producao manter essa opcao como false

  tags = {
    Name = "state-bucket-982349234"
  }
}

resource "aws_s3_bucket_versioning" "versioning_state_bucket" {
  bucket = aws_s3_bucket.state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}