terraform {
  required_version = "5.38.0"
  required_providers {
    aws= {
      source = "hashicorp/aws"
      value= "5.38.0 "
    }

  }
}
#Provider block
provider "aws" {
  region = var.aws_regions
}
  