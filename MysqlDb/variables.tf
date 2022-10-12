variable "mysql_name" {
    type=string
    description = "This variable describe the mysql database name"
  
}


variable "location" {
    type=string
    description = "This variable describe the mysql database location"
  
}

variable "rg_name" {
    type=string
    description = "This variable describea the Resource Group name"
  
}

variable "azurerm_mysql_firewall_rule" {
    type=string
    description = "This variable describes the firewall rule name"
  
}