variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the resource group should be created"
  type        = string
}

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

# variable "tagstags" {
#   description = "A map of tags to assign to resources."
#   type        = map(string)
# }

variable "workspace_name" {
  description = "Name of the Databricks Workspace"
  type        = string
}

variable "workspace_sku" {
  description = "SKU Tier of the workspace"
  type        = string
}

variable "azure_storage_account" {
  description = "Azure Storage account"
  type        = string
}

variable "azure_network_security_group" {
  description = "Name of the Network security Group"
  type        = string
}

variable "azure_vnet_address_space" {
  description = "Address space information for a virtual network"
  type        = list(string)
}

variable "azure_virtual_network" {
  description = "Name of the Azure virtual network"
  type        = string
}

variable "azure_subnet" {
  description = "Name of the Azure subnet"
  type        = string
}

variable "azure_account_tier" {
  description = "Tier of the Azure storage account"
  type        = string
}

variable "azure_account_replication_type" {
  description = "Replication type of the Azure storage account"
  type        = string
}

variable "databricks_workspace" {
  description = "Name of the Databricks workspace"
  type        = string
}