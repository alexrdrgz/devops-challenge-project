// Here is where you should configure your remote state
terraform {
  backend {}

  required_providers {
    aws = {
      souce = "hashicorp/aws"
    }
  }
}

// We will be using AWS for this challenge
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

