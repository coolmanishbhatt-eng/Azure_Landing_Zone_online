variable "vnet_name" {

  description = "Name of the Virtual Network"

  type = string

}


variable "resource_group_name" {

  description = "Resource Group name where VNET will be created"

  type = string

}


variable "location" {

  description = "Azure region"

  type = string

}


variable "address_space" {

  description = "VNET address space"

  type = list(string)

}


variable "dns_servers" {

  description = "Custom DNS servers"

  type = list(string)

  default = []

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

  default = {}

}