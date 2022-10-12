resource "azurerm_mysql_server" "infra"{

    name = var.mysql_name
    location = var.location
    resource_group_name =  var.rg_name

    administrator_login = "barbartadmin"
    administrator_login_password = "Marius2208@"

    sku_name   = "B_Gen5_1"
    storage_mb = 51200
    version    = "5.7"

    auto_grow_enabled = true
    backup_retention_days = 7
    geo_redundant_backup_enabled = false 
    infrastructure_encryption_enabled = false 
    public_network_access_enabled =  true
    ssl_enforcement_enabled = false 
    ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"


}


resource "azurerm_mysql_firewall_rule" "infra" {
    name = var.azurerm_mysql_firewall_rule
    resource_group_name = var.rg_name
    server_name = var.mysql_name
    start_ip_address = "188.26.140.143"
    end_ip_address = "188.26.140.143"
  depends_on = [azurerm_mysql_server.infra]
  
}

