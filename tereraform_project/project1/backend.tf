terraform {
  backend "s3" {
    bucket         = "anan--bucket"
    key            = "terraform/project1.tfstate"
    region         = "us-east-1"
  }
}

