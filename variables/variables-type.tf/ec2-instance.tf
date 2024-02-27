resource "aws_instance" "web-server" {
   ami = Data.aws_ami.amzlinux2.id
   #instance_type=var.instance_type
   instance_type =var.instance_type_list[1]   #this is list varaible
   #instance_type=var.instance_type_map["dev"]  map variable
   user_data = file("${path.module}/app1-install.sh")
   key_name = var.instance_keypair
   vpc_security_group_ids = [ aws_security_group.Java-web-SG.id,aws_security_group.vpc-web.id]
   #count = 5 creating 5 instance if we use count=5 
   tags = {
     "Name" = "Ec2-web-dev"
     #"Name" = "count-Demo-${count.index}"
   }
}

