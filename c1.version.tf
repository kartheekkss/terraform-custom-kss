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
  region = "ap-south-1"
  
#not best practice to store credentails here
 # access_key = ""
 #  secret_key = " "
  #  profie = "default" 
}
