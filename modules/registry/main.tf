resource "azurerm_container_registry" "main" {
  name                = var.name
  resource_group_name = var.group
  location            = var.region
  sku                 = var.tier
  tags                = var.tags
  admin_enabled       = true
}
