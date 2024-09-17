terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.2.0"
    }
    databricks = {
      source = "databricks/databricks"
      version = "1.51.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = var.bkend_rg
    storage_account_name = var.bkend_storage_acc
    container_name       = var.bkend_container_name
    key                  = var.bkend_key
  }
}



# Configure the Azure provider using a Service Principal
provider "azurerm" {
  features {}


}


provider "databricks" {

  alias         = "account"
  host          = "https://accounts.azuredatabricks.net"
  account_id    = var.databricks_account_id
}