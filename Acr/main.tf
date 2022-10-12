
resource "azurerm_container_registry" "acr" {
  name                = var.acr-name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  sku                 = var.acr["tier"]
  admin_enabled       = true
}