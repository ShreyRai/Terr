resource "aws_instance" "ec2-a" {
  #count = 2
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnet_id
  associate_public_ip_address = true
  tags = {
    "Name" = var.instance_name
  }
}