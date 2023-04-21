output "ubuntu-latest-ami" {
  value = data.aws_ami.ubuntu.id
}

output "mail-ip-address" {
  value = aws_instance.mail.*.public_ip
}