terraform {
  required_version = "0.14.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
    }
    template = {
      source  = "hashicorp/template"
    }
  }

}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "random_pet" "website" {
  length = 5
}
