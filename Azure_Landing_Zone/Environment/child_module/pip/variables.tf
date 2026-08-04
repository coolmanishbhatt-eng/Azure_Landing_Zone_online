variable "public_ips" {

  description = "Public IP configuration"

  type = map(object({

    allocation_method = string

    sku               = string

    zones             = optional(list(string))

  }))

}


variable "resource_group_name" {

  description = "Resource Group name"

  type = string

}


variable "location" {

  description = "Azure region"

  type = string

}


variable "tags" {

  description = "Resource tags"

  type = map(string)

  default = {}

}