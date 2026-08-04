output "public_ip_ids" {

  description = "Public IP resource IDs"

  value = {

    for name, pip in azurerm_public_ip.this :

    name => pip.id

  }

}


output "public_ip_addresses" {

  description = "Public IP addresses"

  value = {

    for name, pip in azurerm_public_ip.this :

    name => pip.ip_address

  }

}