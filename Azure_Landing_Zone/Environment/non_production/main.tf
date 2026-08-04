########################################
# SSH Key Generation
########################################

resource "tls_private_key" "ssh" {

  algorithm = "RSA"

  rsa_bits = 4096

}



########################################
# Resource Group Module
########################################

module "resource_group" {

  source = "../child_module/rg"


  resource_group_name = var.resource_group_name

  location = var.location

  tags = var.tags

}



########################################
# Virtual Network Module
########################################

module "vnet" {

  source = "../child_module/vnet"


  vnet_name = "vnet-${var.environment}"


  resource_group_name = module.resource_group.resource_group_name


  location = var.location


  address_space = var.vnet_address_space


  tags = var.tags

}



########################################
# Subnet Module
########################################

module "subnet" {

  source = "../child_module/subnet"


  resource_group_name = module.resource_group.resource_group_name


  virtual_network_name = module.vnet.vnet_name


  subnets = {

    vm-subnet = {

      address_prefixes = [

        "10.10.1.0/24"

      ]

    }


    AzureBastionSubnet = {

      address_prefixes = [

        "10.10.2.0/27"

      ]

    }

  }

}



########################################
# Public IP Module
########################################

module "pip" {

  source = "../child_module/pip"


  resource_group_name = module.resource_group.resource_group_name


  location = var.location


  public_ips = {


    vm-public-ip = {

      allocation_method = "Static"

      sku = "Standard"

    }


    bastion-public-ip = {

      allocation_method = "Static"

      sku = "Standard"

    }

  }


  tags = var.tags

}



########################################
# Network Interface Module
########################################

module "nic" {

  source = "../child_module/nic"


  nic_name = "nic-${var.environment}"


  resource_group_name = module.resource_group.resource_group_name


  location = var.location


  subnet_id = module.subnet.subnet_ids["vm-subnet"]


  public_ip_id = module.pip.public_ip_ids["vm-public-ip"]


  tags = var.tags

}



########################################
# Ubuntu VM Module
########################################

module "vm" {

  source = "../child_module/vm"


  vm_name = "vm-${var.environment}"


  resource_group_name = module.resource_group.resource_group_name


  location = var.location


  nic_id = module.nic.nic_id


  vm_size = var.vm_size


  admin_username = var.admin_username


  ssh_public_key = tls_private_key.ssh.public_key_openssh


  tags = var.tags

}



########################################
# Azure Bastion Module
########################################

module "bastion" {

  source = "../child_module/bastion"


  bastion_name = "bastion-${var.environment}"


  resource_group_name = module.resource_group.resource_group_name


  location = var.location


  subnet_id = module.subnet.subnet_ids["AzureBastionSubnet"]


  public_ip_id = module.pip.public_ip_ids["bastion-public-ip"]


  tags = var.tags

}
########################################
# Azure Key Vault
########################################

module "keyvault" {

  source = "../child_module/keyvault"


  key_vault_name = "kv-np-land-001"


  resource_group_name = module.resource_group.resource_group_name


  location = var.location


  tenant_id = data.azurerm_client_config.current.tenant_id


  tags = var.tags

}
data "azurerm_client_config" "current" {}

########################################
# Key Vault Secret
########################################

module "ssh_private_key_secret" {

  source = "../child_module/keyvault_secret"

  key_vault_id = module.keyvault.key_vault_id

  secret_name = "vm-ssh-private-key"

  secret_value = tls_private_key.ssh.private_key_pem

  depends_on = [
    module.keyvault
  ]
}