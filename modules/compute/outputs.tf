output "instance_public_ip" {
  value = aws_eip.demo-aws_eip.public_ip
}

output "instance_private_ip" {
  value = aws_instance.test-module-instance.private_ip
}