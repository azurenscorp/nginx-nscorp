output "azure_resource_group_output" {

    value = "${azurerm_resource_group.ibems_resource_group.name}"
  
}

output "azure_subnetid_output" {

    #value = "${azurerm_subnet.subnet.id[count.index]}"
    value = "${azurerm_subnet.subnet.id}"

    
  
}

