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

variable "tags" {
  type        = map(string)
  description = "(Required) Map of tags to attach to resources"
}


## Backend
variable "bkend_rg" {
  type = string
}

variable "bkend_storage_acc" {
  type = string
}

variable "bkend_container_name" {
  type = string
}

variable "bkend_key" {
  type = string
}


## DataBricks
variable "databricks_account_id" {
  description = "Datarbicks account ID"
  type        = string

}



