## aks cluster module

resource "azurerm_kubernetes_cluster" "infra" {
  name                = var.aks-name
  location            = var.location
  resource_group_name = var.rg-name
  dns_prefix          = var.aks-dns-prefix
  default_node_pool {
    name       = "default"
    node_count = "1"
    vm_size    = "standard_b2s"
  }

  identity {
    type = "SystemAssigned"
  }



}