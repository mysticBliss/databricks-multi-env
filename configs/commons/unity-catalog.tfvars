shared_resource_group_name = "rg-dbpoc-uc-uksouth"
location = "UK South"
metastore_storage_name =  "dbpocmetastoreuksouth"
access_connector_name = "dac-dbpoc-uksouth"
metastore_name = "dbpoc-metastore-uksouth"

databricks_account_id = "af587e06-4e3e-4d83-943d-68e7f131287d"

# Setup for backend
bkend_rg = "CP-CLOUD-SUPPORT"
bkend_storage_acc = "cpcloudsupport2tfstates"
bkend_container_name = "databricks-multienv-poc"
bkend_key = "terraform.tfstate"

## Meta Data
tags = {
    createdByTerraform = "True"
    createdBy          = "saqib.tamli@clearpeaks.com"
    Team               = "BDC"
    Owner              = "saqib.tamli@clearpeaks.com"
    Project            = "Databricks Infra"
    Project-Type       = "POC"
    Requestor          = "saqib.tamli@clearpeaks.com"
  }