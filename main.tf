
module "ResourceGroup" {
    
    source = "./ResourceGroups"
    rg-name="vintila"
    location="West US"
  
}



module "aks-vintila" {
    
    source = "./AksCluster"
    aks-name="vintilakstf"
    rg-name="vintila"
    location="West US"
    aks-dns-prefix = "test"
  
depends_on = [
  module.ResourceGroup
]
}

module "acr-vintila" {
    
    source = "./Acr"
    acr-name = "vintilaacr"
    rg-name="vintila"
    location="West US"
  
depends_on = [
  module.ResourceGroup
]
}

module "MysqlDb" {
    
    source = "./MysqlDb"
    mysql_name = "vintilaamysql"
    rg_name="vintila"
    location="West US"
    azurerm_mysql_firewall_rule = "HomeInbound"
  
depends_on = [
  module.ResourceGroup
]
}

module "publicip" {
    
    source = "./ip"
    publicip_name = "vintilaip"
    rg_name="vintila"
    location="West US"
  
depends_on = [
  module.ResourceGroup
]
}


# module "helm_charts" {
    
#     source = "./Helm"
#     public_ip=

  
# depends_on = [
#   module.ResourceGroup
# ]
# }
