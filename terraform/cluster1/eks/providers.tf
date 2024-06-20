provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "tofu-dev-eks"
    key            = "tofu-dev/eks.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tofu-dev-eks-tf-state-lock"
  }
}