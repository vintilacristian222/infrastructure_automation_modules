
output "instance_ip" {
  value       = azurerm_public_ip.infra.ip_address
  description = "The private IP address of the main server instance."
}