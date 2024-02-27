resource "aws_instance" "web-server" {
   ami = " "
   instance_type = "t2"
   user_data = file("${path.module}/app1-install.sh")
   tags = {
     "Name" = "Ec2-web-dev"
   }
}