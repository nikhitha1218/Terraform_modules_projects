resource "aws_instance" "public_instance" {
  count = var.vpc_ec2_public == true ? var.vpc_ec2_public_count : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.public_sg.id]
  
  tags = {
    Name = "public_instance"
  }
}

resource "aws_instance" "private_instance" {
  count = var.vpc_ec2_private == true ? var.vpc_ec2_private_count : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = aws_subnet.private_subnet.id
  security_groups = [aws_security_group.private_sg.id]
  tags = {
    Name = "private_instance"
  }
} 
