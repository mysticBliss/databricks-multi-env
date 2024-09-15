# Calling Simple Module
module "calling_lakehouse" {

  source = "../../module/adb-lakehouse"

  location                  = var.location
  spoke_resource_group_name = var.spoke_resource_group_name
  project_name              = var.project_name
  environment_name          = var.environment_name
  spoke_vnet_address_space  = var.spoke_vnet_address_space

  databricks_workspace_name       = var.databricks_workspace_name
  private_subnet_address_prefixes = var.private_subnet_address_prefixes
  public_subnet_address_prefixes  = var.public_subnet_address_prefixes
  tags                            = var.tags

}
