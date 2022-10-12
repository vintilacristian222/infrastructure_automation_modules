
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




