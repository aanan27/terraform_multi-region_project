resource "aws_dynamodb_table" "my-dynamodb" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key

  # Define the hash key attribute
  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  # Add additional attributes as needed
  attribute {
    name = "id"
    type = "S"
  }
}

