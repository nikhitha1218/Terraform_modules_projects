output "artifactory_server_public_ip" {
  value = aws_instance.artifactory_server.*.public_ip
}