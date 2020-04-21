output "name" {
  description = "The image name"
  value       = var.name
}

output "namespace" {
  description = "The image namespace"
  value       = local.namespace
}

output "tag" {
  description = "The image tag"
  value       = local.tag
}

output "registry" {
  description = "The image registry"
  value       = var.registry
}

output "repository" {
  description = "The image repository"
  value       = local.repository
}

output "full_name" {
  description = "The full image name"
  value       = local.full_name
}
