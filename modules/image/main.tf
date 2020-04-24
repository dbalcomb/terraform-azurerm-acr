locals {
  tag        = var.tag == "" ? "latest" : var.tag
  namespace  = var.registry.url == "docker.io" && var.namespace == "" ? "library" : var.namespace
  repository = join("/", [local.namespace, var.name])
  image      = join(":", [local.repository, local.tag])
  full_name  = join("/", [var.registry.url, local.image])
}
