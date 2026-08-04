location = "Central India"


environment = "non-production"


resource_group_name = "rg-nonprod-landingzone"


vnet_address_space = [

  "10.10.0.0/16"

]


vm_size = "Standard_B2s_v2"


admin_username = "azureadmin"


tags = {

  Environment = "Non-Production"

  Project = "Azure-Landing-Zone"

  ManagedBy = "Terraform"

}