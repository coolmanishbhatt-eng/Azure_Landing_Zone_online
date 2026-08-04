output "subnet_ids" {

  description = "Subnet IDs"

  value = {

    for subnet_name, subnet in azurerm_subnet.this :

    subnet_name => subnet.id

  }

}


output "subnet_names" {

  description = "Subnet names"

  value = {

    for subnet_name, subnet in azurerm_subnet.this :

    subnet_name => subnet.name

  }

}