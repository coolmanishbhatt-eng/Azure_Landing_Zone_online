variable "nic_name" {

  description = "Network Interface name"

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

  description = "Subnet ID where NIC will be attached"

  type = string

}


variable "public_ip_id" {

  description = "Public IP ID attached to NIC"

  type = string

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

  default = {}

}