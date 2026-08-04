variable "vm_name" {

  description = "Virtual Machine name"

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


variable "nic_id" {

  description = "NIC ID attached to VM"

  type = string

}


variable "vm_size" {

  description = "Azure VM size"

  type = string

  default = "Standard_B2s_v2"

}


variable "admin_username" {

  description = "Linux admin username"

  type = string

}


variable "ssh_public_key" {

  description = "SSH public key"

  type = string

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

  default = {}

}