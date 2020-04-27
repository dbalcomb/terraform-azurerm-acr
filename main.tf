locals {
  tags = merge({
    environment = "production"
    provisioner = "terraform"
    component   = "acr"
  }, var.tags)
}

resource "azurerm_resource_group" "main" {
  name     = format("%s-rg", var.name)
  location = var.region
  tags     = local.tags
}

module "registry" {
  source = "./modules/registry"

  name        = var.prefix
  group       = azurerm_resource_group.main.name
  region      = azurerm_resource_group.main.location
  tier        = var.tier
  pull_access = var.pull_access
  tags        = local.tags
}
