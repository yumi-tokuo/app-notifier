# PROVIDER
terraform {

  required_version = "~> 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "tf-notifier-state-cp2"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-notifier-state-cp2"
    region         = "us-east-1"
  }

}