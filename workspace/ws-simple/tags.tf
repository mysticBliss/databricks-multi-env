
locals {
  common_tags = {
    createdByTerraform = "True"
    createdBy          = "saqib.tamli@clearpeaks.com"
    Team               = "BDC"
    Owner              = "saqib.tamli@clearpeaks.com"
    Project            = "Databricks Infra"
    Project-Type       = "Internal"
    Requestor          = "saqib.tamli@clearpeaks.com"
  }

  #   prefix = "databricks-multi-env"
  #   ad_users = [
  #   "saqib.tamli@clearpeaks.com",
  #   "victor.colome@clearpeaks.com"
  #  ]
}