resource "aws_instance" "test-module-instance" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "module-demo"
  }
}

resource "aws_eip" "demo-aws_eip" {
  instance = aws_instance.test-module-instance.id
}