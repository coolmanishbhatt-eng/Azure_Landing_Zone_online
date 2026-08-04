variable "location" {

  description = "Azure region where resources will be deployed"

  type = string

}


variable "environment" {

  description = "Environment name"

  type = string

}


variable "resource_group_name" {

  description = "Resource group name"

  type = string

}


variable "vnet_address_space" {

  description = "VNET CIDR range"

  type = list(string)

}


variable "vm_size" {

  description = "Azure VM size"

  type = string

}


variable "admin_username" {

  description = "Linux VM admin username"

  type = string

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

}