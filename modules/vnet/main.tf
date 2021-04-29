resource "azurerm_resource_group" "ibems_resource_group" {

  name     = var.resource_group_name
  location = "eastus"
}

resource "azurerm_network_security_group" "ibems_network_sg" {

  name                = "acceptanceTestSecurityGroup1"
  location            = azurerm_resource_group.ibems_resource_group.location
  resource_group_name = azurerm_resource_group.ibems_resource_group.name
}

resource "azurerm_network_ddos_protection_plan" "ibems_ddos_pp" {

  name                = "ddospplan1"
  location            = azurerm_resource_group.ibems_resource_group.location
  resource_group_name = azurerm_resource_group.ibems_resource_group.name
}








##################




resource azurerm_virtual_network "vnet" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.ibems_resource_group.name
  location            = var.location
  address_space       = var.address_space
  dns_servers         = var.dns_servers


  ddos_protection_plan {
    id     = azurerm_network_ddos_protection_plan.ibems_ddos_pp.id
    enable = false
  }


  subnet {
    name           = "subnet1"
    address_prefix = "192.168.2.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "192.168.3.0/24"
  }

  tags = {
   
    environment = var.tag_environment

  }

}

resource "azurerm_subnet" "subnet" {
 
   name                     =   "AZURE_IBEMS_subnet"
  virtual_network_name      = azurerm_virtual_network.vnet.name
  resource_group_name       = azurerm_resource_group.ibems_resource_group.name
  address_prefix            =  "192.168.4.0/24"

}

