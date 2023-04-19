output "gitlab_server_public_ip" {
  value = aws_instance.gitlab_server.*.public_ip
}