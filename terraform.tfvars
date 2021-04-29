location            = "East US"
resource_group_name = "NS-DEV-ibems-RG-Terraform"
vnet_name           = "AZURE-VNET-IBEMS-DEV"
#environment         = "Development"
address_space       = ["192.168.0.0/16"]
dns_servers         = ["192.168.10.0", "192.168.11.0"]
prefix_name         = "Azure-Dev"
compute_name = "Azure-VM"
azure_ni     = "Azure-interwork-interface"
azure_region = "US East"
#subnet_id    = " "
subnet_count = "1"
environment = "dev" 