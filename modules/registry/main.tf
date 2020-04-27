resource "azurerm_container_registry" "main" {
  name                = var.name
  resource_group_name = var.group
  location            = var.region
  sku                 = var.tier
  tags                = var.tags
  admin_enabled       = true
}

resource "azurerm_role_assignment" "pull" {
  for_each = var.pull_access

  role_definition_name = "AcrPull"
  principal_id         = each.value
  scope                = azurerm_container_registry.main.id
}
