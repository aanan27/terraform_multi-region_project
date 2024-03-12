module "network" {
  source       = "../modules/network"
  vpc_cidr     = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "s3" {
  source = "../modules/s3"
  bucket = var.bucket_name
}

module "dynamodb" {
  source         = "../modules/dynamodb"
  table_name     = var.dynamodb_table_name
  billing_mode   = var.dynamodb_billing_mode
  hash_key       = var.dynamodb_hash_key
  hash_key_type  = var.dynamodb_hash_key_type
}

module "ec2" {
  source            = "../modules/ec2"
  ami               = var.ec2_ami
  instance_type     = var.ec2_instance_type
  ec2_sg            = var.ec2_security_group_ids
  public_subnet_ec2 = module.network.public_subnet_id
}

module "vpc_endpoint_s3" {
  source          = "../modules/vpcendPoints"
  vpc_id          = module.network.vpc_id
  region          = var.region
  route_table_id  = module.network.route_table_id
}

