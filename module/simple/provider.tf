terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.51.0"
    }
  }

  required_version = ">= 1.1.0"
}



# Configure the Azure provider using a Service Principal
provider "azurerm" {
  features {}

  # Authentication using Service Principal
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
  subscription_id = var.azure_subscription_id
}
