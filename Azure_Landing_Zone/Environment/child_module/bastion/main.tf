resource "azurerm_bastion_host" "this" {

  name = var.bastion_name


  location = var.location


  resource_group_name = var.resource_group_name


  ip_configuration {

    name = "bastion-ip-config"


    subnet_id = var.subnet_id


    public_ip_address_id = var.public_ip_id

  }


  tags = var.tags

}