variable "bastion_name" {

  description = "Azure Bastion name"

  type = string

}


variable "resource_group_name" {

  description = "Resource Group name"

  type = string

}


variable "location" {

  description = "Azure region"

  type = string

}


variable "subnet_id" {

  description = "AzureBastionSubnet ID"

  type = string

}


variable "public_ip_id" {

  description = "Bastion Public IP ID"

  type = string

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

  default = {}

}