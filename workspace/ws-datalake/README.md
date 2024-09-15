<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

terrafomr plan
terraform apply --var-file="../../configs/commons/unity-catalog.tfvars"

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_calling_lakehouse"></a> [calling\_lakehouse](#module\_calling\_lakehouse) | ../../module/adb-lakehouse | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Datarbicks account ID | `string` | n/a | yes |
| <a name="input_azure_client_id"></a> [azure\_client\_id](#input\_azure\_client\_id) | The Client ID (appId) of the Service Principal | `string` | n/a | yes |
| <a name="input_azure_client_secret"></a> [azure\_client\_secret](#input\_azure\_client\_secret) | The Client Secret (password) of the Service Principal | `string` | n/a | yes |
| <a name="input_azure_subscription_id"></a> [azure\_subscription\_id](#input\_azure\_subscription\_id) | The Subscription ID for Azure | `string` | n/a | yes |
| <a name="input_azure_tenant_id"></a> [azure\_tenant\_id](#input\_azure\_tenant\_id) | The Tenant ID of the Service Principal | `string` | n/a | yes |
| <a name="input_create_resource_group"></a> [create\_resource\_group](#input\_create\_resource\_group) | (Optional) Creates resource group if set to true (default) | `bool` | `true` | no |
| <a name="input_data_factory_name"></a> [data\_factory\_name](#input\_data\_factory\_name) | The name of the Azure Data Factory to deploy. Won't be created if not specified | `string` | `""` | no |
| <a name="input_databricks_workspace_name"></a> [databricks\_workspace\_name](#input\_databricks\_workspace\_name) | Name of Databricks workspace | `string` | n/a | yes |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | (Required) The name of the project environment associated with the infrastructure to be managed by Terraform | `string` | n/a | yes |
| <a name="input_key_vault_name"></a> [key\_vault\_name](#input\_key\_vault\_name) | The name of the Azure Key Vault to deploy. Won't be created if not specified | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location for the resources in this module | `string` | n/a | yes |
| <a name="input_managed_resource_group_name"></a> [managed\_resource\_group\_name](#input\_managed\_resource\_group\_name) | (Optional) The name of the resource group where Azure should place the managed Databricks resources | `string` | `""` | no |
| <a name="input_private_subnet_address_prefixes"></a> [private\_subnet\_address\_prefixes](#input\_private\_subnet\_address\_prefixes) | Address space for private Databricks subnet | `list(string)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | (Required) The name of the project associated with the infrastructure to be managed by Terraform | `string` | n/a | yes |
| <a name="input_public_subnet_address_prefixes"></a> [public\_subnet\_address\_prefixes](#input\_public\_subnet\_address\_prefixes) | Address space for public Databricks subnet | `list(string)` | n/a | yes |
| <a name="input_spoke_resource_group_name"></a> [spoke\_resource\_group\_name](#input\_spoke\_resource\_group\_name) | (Required) The name of the Resource Group to create | `string` | n/a | yes |
| <a name="input_spoke_vnet_address_space"></a> [spoke\_vnet\_address\_space](#input\_spoke\_vnet\_address\_space) | (Required) The address space for the spoke Virtual Network | `string` | n/a | yes |
| <a name="input_storage_account_names"></a> [storage\_account\_names](#input\_storage\_account\_names) | Names of additional storage accounts to create | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Required) Map of tags to attach to resources | `map(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

