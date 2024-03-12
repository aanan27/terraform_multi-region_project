variable "region" {
  type    = string
  default = "us-east-1"
}

# Secondary Region (if applicable)
variable "secondary_region" {
  type = string
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# Public Subnet CIDR
variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

# Private Subnet CIDR
variable "private_subnet_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

# Bucket Name for S3
variable "bucket_name" {
  type    = string
  default = "anan--bucket"
}

# DynamoDB Table Name
variable "dynamodb_table_name" {
  type    = string
  default = "anan--table"
}

variable "dynamodb_billing_mode" {
  type    = string
  default = "PAY_PER_REQUEST"
}

# DynamoDB Hash Key
variable "dynamodb_hash_key" {
  type    = string
  default = "id"
}

# DynamoDB Hash Key Type
variable "dynamodb_hash_key_type" {
  type    = string
  default = "S"
}

# EC2 AMI
variable "ec2_ami" {
  type    = string
  default = "ami-006dcf34c09e50022"
}

# EC2 Instance Type
variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}

# Availability Zone
variable "az" {
  type = string
}

variable "key_name" {
  type = string
}

variable "dynamo_table_key" {
  type    = string
}

variable "dynamo_table_key_type" {
  type    = string
  default = "S"
}

variable "ec2_security_group_ids" {
  type    = list(string)
  default = ["sg-0279290f0034265c4", "sg-0b41c4eac9e82dc5a"]
}

