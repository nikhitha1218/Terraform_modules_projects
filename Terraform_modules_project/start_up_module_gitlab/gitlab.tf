resource "aws_instance" "gitlab_server" {
  count = var.gitlab_want == true ? var.gitlab_count : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name
  
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file(var.local_aws_private_key_path)
    host     = self.public_ip
  }

  tags = {
    Name = "GitLab_server-${count.index}"
  }  

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y apache2",
      "sudo systemctl start apache2",
      "sudo systemctl enable apache2",
      "cd /var/www/html",
      "sudo chmod 407 index.html",
      "sudo echo '<h1>Hello World from GitLab_Server</h1>'  > /var/www/html/index.html",
      "sudo systemctl restart apache2"
    ]

  }  
}