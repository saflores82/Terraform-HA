# This is where to configure providers

#Provider
#aws - Set the minimal provider version and default resource tags

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      Management = "Terraform"
    }
  }
}
