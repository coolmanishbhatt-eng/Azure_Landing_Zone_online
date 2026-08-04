variable "resource_group_name" {

  description = "Resource Group name"

  type = string

}


variable "virtual_network_name" {

  description = "Virtual Network name"

  type = string

}


variable "subnets" {

  description = "Subnet configuration"

  type = map(object({

    address_prefixes = list(string)

  }))

}