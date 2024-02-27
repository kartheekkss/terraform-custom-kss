variable "aws_regions" {
    description = "this is region variable"
    type = string
    default = "ap-south-1"

}
#AMI for ec2 instance
variable "ami" {
    description = "This is for ami type"
    type = string
    default = "value"
}
#instance type for EC2
variable "instance_type" {
    description = "This is instance type"
    type = string
    default = "t2.micro"
  
}
#key for EC2 instance
variable "instance_keypair" {
    description = "ec2-keypair"
    type = string
    default = "terraform-key"
  
}

# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instnace Type"
  type = list(string)
  default = ["t3.micro", "t3.small"]
}


# AWS EC2 Instance Type - Map
variable "instance_type_map" {
  description = "EC2 Instnace Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
    "prod" = "t3.large"
  }
}