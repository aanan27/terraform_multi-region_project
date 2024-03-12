# modules/ec2/variables.tf

variable "ami" {
  description = "The AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
}

variable "ec2_sg" {
  description = "The security group IDs for the EC2 instance"
  type        = list(string)
}

variable "public_subnet_ec2" {
  description = "The public subnet ID for the EC2 instance"
}

