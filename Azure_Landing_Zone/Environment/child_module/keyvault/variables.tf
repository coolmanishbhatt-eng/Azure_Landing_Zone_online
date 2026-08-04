variable "key_vault_name" {

  description = "Azure Key Vault name"

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


variable "tenant_id" {

  description = "Azure tenant ID"

  type = string

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

  default = {}

}