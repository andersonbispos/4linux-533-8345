resource "aws_dynamodb_table" "db_table_state" {
  name           = "db-table-state"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "db_table_state"
    Environment = "production"
  }
}