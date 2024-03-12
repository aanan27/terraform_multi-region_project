# modules/dynamodb/variables.tf

variable "table_name" {
  description = "The name of the DynamoDB table"
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table"
}

variable "hash_key" {
  description = "The hash key for the DynamoDB table"
}

variable "hash_key_type" {
  description = "The data type of the hash key"
}

