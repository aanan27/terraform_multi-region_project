# modules/vpc_endpoint/variables.tf

variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "region" {
  description = "The AWS region"
}

variable "route_table_id" {
  description = "The ID of the route table associated with the VPC"
}

