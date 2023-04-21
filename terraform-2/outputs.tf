output "public_ip" {
  value = azurerm_public_ip.main.ip_address
}

output "username" {
  value = var.admin_username
}

output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}