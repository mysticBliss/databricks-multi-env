
# Create a Resource Group in the specified subscription
resource "azurerm_resource_group" "databricks_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location

  # Implicit dependcency (good to have)
  depends_on = [var.azure_subscription_id]
  tags       = var.tags
}


# create NSG which depends
resource "azurerm_network_security_group" "databricks_nsg" {
  name                = var.azure_network_security_group
  location            = azurerm_resource_group.databricks_rg.location
  resource_group_name = azurerm_resource_group.databricks_rg.name

  # Implicit dependcency (good to have)
  depends_on = [var.azure_subscription_id, var.resource_group_name]
  tags = var.tags
}


# Create a virtual network within the resource group
resource "azurerm_virtual_network" "databricks_vnet" {
  name                = var.azure_virtual_network
  resource_group_name = azurerm_resource_group.databricks_rg.name
  location            = azurerm_resource_group.databricks_rg.location
  address_space       = var.azure_vnet_address_space

  # Implicit dependcency (good to have)
  depends_on = [var.azure_subscription_id, azurerm_resource_group.databricks_rg]
  tags = var.tags
}

resource "azurerm_storage_account" "unity_catalog" {
  name                     = var.azure_storage_account
  resource_group_name      = azurerm_resource_group.databricks_rg.name
  location                 = azurerm_resource_group.databricks_rg.location
  account_tier             = var.azure_account_tier
  account_replication_type = var.azure_account_replication_type
  is_hns_enabled           = true
  tags = var.tags
}


resource "azurerm_storage_container" "unity_catalog" {
  name                  = "${var.azure_storage_account}-container"
  storage_account_name  = azurerm_storage_account.unity_catalog.name 
  container_access_type = "private"
  
  
}





