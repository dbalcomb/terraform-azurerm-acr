output "id" {
  description = "The registry ID"
  value       = azurerm_container_registry.main.id
}

output "name" {
  description = "The registry name"
  value       = azurerm_container_registry.main.name
}

output "group" {
  description = "The target resource group"
  value       = azurerm_container_registry.main.resource_group_name
}

output "region" {
  description = "The target resource region"
  value       = azurerm_container_registry.main.location
}

output "tier" {
  description = "The registry service tier"
  value       = azurerm_container_registry.main.sku
}

output "url" {
  description = "The server address URL"
  value       = azurerm_container_registry.main.login_server
}

output "username" {
  description = "The admin account username"
  value       = azurerm_container_registry.main.admin_username
}

output "password" {
  description = "The admin account password"
  value       = azurerm_container_registry.main.admin_password
}
