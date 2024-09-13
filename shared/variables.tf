variable "azure_tenant_id" {
  description = "The Tenant ID of the Service Principal"
  type        = string
}

variable "azure_subscription_id" {
  description = "The Subscription ID for Azure"
  type        = string
}

variable "azure_client_id" {
  description = "The Client ID (appId) of the Service Principal"
  type        = string
}

variable "azure_client_secret" {
  description = "The Client Secret (password) of the Service Principal"
  type        = string
}

### Databricks UC Meta Store #####################
variable "shared_resource_group_name" {
  type        = string
  description = "Name of the shared resource group"
  # default = var.resource_group_name
}

variable "location" {
  type        = string
  description = "(Required) The location for the resources in this module"
}

variable "metastore_storage_name" {
  type        = string
  description = "Name of the storage account for Unity Catalog metastore"
}

variable "access_connector_name" {
  type        = string
  description = "Name of the access connector for Unity Catalog metastore"
}

variable "metastore_name" {
  type        = string
  description = "the name of the metastore"
}

# variable "tags" {
#   type        = map(string)
#   description = "(Required) Map of tags to attach to resources"
# }



variable "account_id" {
  description = "Datarbicks account ID"
  type        = string

}



