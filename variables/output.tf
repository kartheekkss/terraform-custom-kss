output "instance_publicip" {
    description = "ec2-instance publicIP"
    value = aws_instance.web-server.public_ip
}
output "instance_publicdns" {
    description = "ec2-instance publicIP"
    value = aws_instance.web-server.public_dns
}
