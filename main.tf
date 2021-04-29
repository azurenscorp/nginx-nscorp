
module "virtual-network" {
  source = "./modules/vnet"

  location            = var.location
  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  dns_servers         = var.dns_servers
  address_space       = var.address_space
  tag_environment     = var.environment

 subnet_count = var.subnet_count
 environment = var.environment
 


}


module "compute" {
  source = "./modules/compute"

 resource_group_name = module.virtual-network.azure_resource_group_output
 subnetid_1 =  module.virtual-network.azure_subnetid_output
 location = var.location


}

