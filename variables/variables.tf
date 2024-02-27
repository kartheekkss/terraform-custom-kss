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