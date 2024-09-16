terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}



# Configure the Azure provider using a Service Principal
provider "azurerm" {
  features {}

}


provider "databricks" {

  alias         = "account"
  host          = "https://accounts.azuredatabricks.net"
  account_id    =  var.account_id
  auth_type = "oauth-m2m"
}