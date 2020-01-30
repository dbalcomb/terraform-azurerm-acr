resource "azurerm_resource_group" "main" {
  name     = format("%s-rg", var.name)
  location = var.location
}
