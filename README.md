# databricks-multi-env

This guide outlines the process for setting up `Databricks Platform with multiple environments using Terraform`. We'll create a Unity Catalog and then set up workspaces for development, pre-production, and production environments.

## Prerequisites

- Terraform installed
- Access to necessary Azure/Databricks accounts
- Proper permissions set up

## Directory Structure

```
databricks-multi-env/
├── configs/
│   ├── commons/
│   │   └── unity-catalog.tfvars
│   └── environments/
│       ├── dev.tfvars
│       ├── pre.tfvars
│       └── prod.tfvars
├── module/
│       ├── adb-lakehouse/
│       └── adb-uc-metastore/
│       
├── workspace/
│   └── ws-datalake/
│       ├── main.tf
│       ├── providers.tf
│       ├── variables.tf
│       └── README.md
├── shared/
│    └── unity-catalog/
│       ├── unity_catalog.tf
│       ├── providers.tf
│       ├── variables.tf
│       └── README.md
│
└── .gitignore
```

## Modules

This project uses several custom modules to manage different aspects of our Databricks infrastructure:

1. **adb-lakehouse**: This module is responsible for setting up the Databricks Lakehouse architecture. It includes configurations for Delta Lake, data storage, and compute resources.

2. **adb-uc-metastore**: This module manages the Unity Catalog metastore, which provides a centralized metadata management system for Databricks workspaces.

3. **unity-catalog**: Located in the shared directory, this module handles the creation and configuration of the Unity Catalog, which enables data discovery, governance, and sharing across Databricks workspaces.

These modules are designed to work together to create a comprehensive Databricks environment. They are referenced in the main Terraform configurations and can be customized as needed for different environments.

## Step 1: Create Unity Catalog

1. Navigate to the `shared/unity-catalog` directory:
   ```
   cd databricks-multi-env/shared/unity-catalog
   ```

2. Initialize Terraform:
   ```
   terraform init
   ```

3. Apply the Unity Catalog configuration using the commons file:
   ```
   terraform apply -var-file=../../commons/unity.tfvars --auto-approve
   ```

## Step 2: Set Up Workspaces

For each environment (dev, pre, prod), follow these steps:

1. Navigate to the `ws-datalake` directory:
   ```
   cd databricks-multi-env/workspace/ws-datalake
   ```

2. Create a new workspace for the environment:
   ```
   terraform workspace new <env>
   ```
   Replace `<env>` with `dev`, `pre`, or `prod`.

3. Select the workspace:
   ```
   terraform workspace select <env>
   ```

4. Initialize Terraform (if not already done):
   ```
   terraform init
   ```

5. Apply the configuration using the appropriate environment file:
   ```
   terraform apply -var-file=../../environments/<env>.tfvars
   ```
   Replace `<env>` with `dev`, `pre`, or `prod`.

6. Review the plan and type `yes` to create the resources for that environment.

## Switching Between Environments

To switch between environments and apply changes:

1. Select the desired workspace:
   ```
   terraform workspace select <env>
   ```

2. Apply changes as needed:
   ```
   terraform apply -var-file=../../environments/<env>.tfvars
   ```

## Important Notes

- Always review the Terraform plan before applying changes.
- Ensure that sensitive information is not committed to version control.
- Regularly update your Terraform modules and providers.
- Use consistent naming conventions across all environments.
- When modifying modules, consider the impact on all environments.

## Troubleshooting

If you encounter issues:
- Verify that all required variables are set in your .tfvars files.
- Check that you have the necessary permissions in Azure/Databricks.
- Review Terraform logs for detailed error messages.
- Ensure that module versions are compatible across your configuration.