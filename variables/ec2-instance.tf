resource "aws_instance" "web-server" {
   ami = Data.aws_ami.amzlinux2.id
   instance_type =var.instance_type
   user_data = file("${path.module}/app1-install.sh")
   key_name = var.instance_keypair
   vpc_security_group_ids = [ aws_security_group.Java-web-SG.id,aws_security_group.vpc-web.id]
   tags = {
     "Name" = "Ec2-web-dev"
   }
}
