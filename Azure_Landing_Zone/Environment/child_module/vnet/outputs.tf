output "vnet_name" {

  description = "Virtual Network name"

  value = azurerm_virtual_network.this.name

}


output "vnet_id" {

  description = "Virtual Network ID"

  value = azurerm_virtual_network.this.id

}


output "address_space" {

  description = "VNET address space"

  value = azurerm_virtual_network.this.address_space

}