output "vm_id" {

  description = "Virtual Machine ID"

  value = azurerm_linux_virtual_machine.this.id

}


output "vm_name" {

  description = "Virtual Machine name"

  value = azurerm_linux_virtual_machine.this.name

}


output "private_ip_address" {

  description = "Private IP address"

  value = azurerm_linux_virtual_machine.this.private_ip_address

}