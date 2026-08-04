output "environment" {

  value = var.environment

}


output "location" {

  value = var.location

}
output "ssh_private_key" {

  value = tls_private_key.ssh.private_key_openssh

  sensitive = true

}