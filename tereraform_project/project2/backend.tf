terraform {
  backend "s3" {
    bucket         = "anan--bucket2"
    key            = "terraform/project2.tfstate"
    region         = "us-west-2"
  }
}

