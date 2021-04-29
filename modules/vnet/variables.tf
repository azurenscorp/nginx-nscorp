variable "location" { }
variable "resource_group_name" { }
variable "vnet_name" { }
variable "address_space" { }
variable "dns_servers" { }
variable "tag_environment" { }
variable "subnet_count" { }
variable "environment" {}

  #  default = "dev"
 


variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["192.168.2.0/24"]

  
}

variable "subnet_name" {
  description = "A list of public subnets inside the vNet."
 # type        = list(string)
  default     = "subnet1"
}


variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  type        = list(string)
  default     = ["subnet1", "subnet2", "subnet3"]
}

variable "subnet_service_endpoints" {
  description = "A map of subnet name to service endpoints to add to the subnet."
  type        = map(any)
  default     = {}
}

variable "subnet_enforce_private_link_endpoint_network_policies" {
  description = "A map of subnet name to enable/disable private link endpoint network policies on the subnet."
  type        = map(bool)
  default     = {}
}

variable "subnet_enforce_private_link_service_network_policies" {
  description = "A map of subnet name to enable/disable private link service network policies on the subnet."
  type        = map(bool)
  default     = {}
}

variable "nsg_ids" {
  description = "A map of subnet name to Network Security Group IDs"
  type        = map(string)

  default = {
  }
}

