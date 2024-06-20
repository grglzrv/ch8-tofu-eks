provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "tofu-dev-eks"
    key            = "tofu-dev-cluster1/networking.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tofu-dev-network-tf-state-lock"
  }
}