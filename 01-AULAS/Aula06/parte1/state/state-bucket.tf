resource "aws_s3_bucket" "state_bucket" {
  bucket = "state-bucket-098273213"

  tags = {
    Name        = "state-bucket-098273213"
  }
}

resource "aws_s3_bucket_versioning" "versioning_state_bucket" {
  bucket = aws_s3_bucket.state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}