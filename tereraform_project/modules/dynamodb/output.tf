# modules/dynamodb/outputs.tf

output "table_name" {
  value = aws_dynamodb_table.my-dynamodb.name
}

