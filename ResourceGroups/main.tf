resource "azurerm_resource_group" "infra" {
    name= "${var.rg-name}"
    location = var.location

  
}
