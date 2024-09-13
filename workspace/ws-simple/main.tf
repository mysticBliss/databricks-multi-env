# Calling Simple Module
module "calling_simple" {
  source = "./module/simple"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location

  azure_tenant_id                = var.azure_tenant_id
  azure_subscription_id          = var.azure_subscription_id
  azure_client_id                = var.azure_client_id
  azure_client_secret            = var.azure_client_secret
  workspace_name                 = var.workspace_name
  workspace_sku                  = var.workspace_sku
  azure_storage_account          = var.azure_storage_account
  azure_network_security_group   = var.azure_network_security_group
  azure_vnet_address_space       = var.azure_vnet_address_space
  azure_virtual_network          = var.azure_virtual_network
  azure_subnet                   = var.azure_subnet
  azure_account_tier             = var.azure_account_tier
  azure_account_replication_type = var.azure_account_replication_type
  databricks_workspace           = var.databricks_workspace
  tags                           = local.common_tags

}