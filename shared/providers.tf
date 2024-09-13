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

  # Authentication using Service Principal
  client_id       = "71b0fdda-fef1-408d-825b-a2eb553af2c3"#var.azure_client_id
  client_secret   = "aF48Q~0FjYGMZcWOzjeiK9xIkXJUapZm2SUu8ac9"#var.azure_client_secret
  tenant_id       = "d5b4529b-7457-49d9-931b-7c7f9b9eed54"#var.azure_tenant_id
  subscription_id = "f3ea9166-fb51-4a5e-b2ac-ea8118ef43ba"#var.azure_subscription_id

}


provider "databricks" {

  alias      = "account"
  host       = "https://accounts.azuredatabricks.net"
  account_id = var.account_id
  client_id     = "71b0fdda-fef1-408d-825b-a2eb553af2c3"
  client_secret = "doseab7f00895be4df582bf268795f398e17"


}