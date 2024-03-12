# modules/s3/main.tf


resource "aws_s3_bucket" "s3" {
  bucket = var.bucket
}

