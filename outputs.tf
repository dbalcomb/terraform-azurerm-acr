output "id" {
  description = "The registry ID"
  value       = module.registry.id
}

output "name" {
  description = "The registry name"
  value       = var.name
}

output "group" {
  description = "The target resource group"
  value       = module.registry.group
}

output "region" {
  description = "The target resource region"
  value       = module.registry.region
}

output "prefix" {
  description = "The registry domain prefix"
  value       = module.registry.name
}

output "tier" {
  description = "The registry service tier"
  value       = module.registry.tier
}

output "url" {
  description = "The server address URL"
  value       = module.registry.url
}

output "username" {
  description = "The admin account username"
  value       = module.registry.username
}

output "password" {
  description = "The admin account password"
  value       = module.registry.password
}
