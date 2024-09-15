variable "location" {
  type        = string
  description = "(Required) The location for the resources in this module"
}

variable "spoke_resource_group_name" {
  type        = string
  description = "(Required) The name of the Resource Group to create"
}

variable "create_resource_group" {
  type        = bool
  description = "(Optional) Creates resource group if set to true (default)"
  default     = true
}

variable "managed_resource_group_name" {
  type        = string
  description = "(Optional) The name of the resource group where Azure should place the managed Databricks resources"
  default     = ""
}

variable "project_name" {
  type        = string
  description = "(Required) The name of the project associated with the infrastructure to be managed by Terraform"
}

variable "environment_name" {
  type        = string
  description = "(Required) The name of the project environment associated with the infrastructure to be managed by Terraform"
}

variable "spoke_vnet_address_space" {
  type        = string
  description = "(Required) The address space for the spoke Virtual Network"
}

variable "tags" {
  type        = map(string)
  description = "(Required) Map of tags to attach to resources"
}

variable "databricks_workspace_name" {
  type        = string
  description = "Name of Databricks workspace"
}

variable "data_factory_name" {
  type        = string
  description = "The name of the Azure Data Factory to deploy. Won't be created if not specified"
  default     = ""
}

variable "key_vault_name" {
  type        = string
  description = "The name of the Azure Key Vault to deploy. Won't be created if not specified"
  default     = ""
}

variable "private_subnet_address_prefixes" {
  type        = list(string)
  description = "Address space for private Databricks subnet"
}

variable "public_subnet_address_prefixes" {
  type        = list(string)
  description = "Address space for public Databricks subnet"
}

variable "storage_account_names" {
  type        = list(string)
  description = "Names of additional storage accounts to create"
  default     = []
}


## Azure 

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

## DataBricks
variable "databricks_account_id" {
  description = "Datarbicks account ID"
  type        = string

}

variable "databricks_client_id" {
  description = "Datarbicks client ID"
  type        = string

}

variable "databricks_client_secret" {
  description = "Datarbicks client_secret ID"
  type        = string

}