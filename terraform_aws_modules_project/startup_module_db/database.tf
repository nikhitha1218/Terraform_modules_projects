resource "aws_instance" "example_db" {
  count = 1
  ami           = "data.aws_ami.ubuntu.id"
  instance_type = "var.instance_type"
  key_name      = "var.key_name"
  security_groups = var.security_groups

  tags = {
    Name = "example_db_instance"
  }
 
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = var.ssh_private_key_path
    host        = aws_instance.example_db.public_ip
  }

  provisioner "file" {
    content = <<-EOT
      CREATE DATABASE mydatabase;
      USE mydatabase;
      CREATE TABLE mytable (id INT PRIMARY KEY, name VARCHAR(255));
      INSERT INTO mytable (id, name) VALUES (1, 'John');
    EOT
    destination = "/home/ubuntu/setup.sql"
  }
}