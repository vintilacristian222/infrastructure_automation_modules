
resource "azurerm_public_ip" "infra" {
  name                = var.publicip_name
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = "Production"
  }
}


variable "publicip_name" {

    type= string
    description = "public ip name"
  
}

variable "rg_name" {

    type= string
    description = "resource group name"
  
}


variable "location" {

    type= string
    description = "public ip location"
  
}
