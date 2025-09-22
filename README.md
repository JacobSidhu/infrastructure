# Infrastructure Terraform Project

This repository contains the Terraform configuration for provisioning Azure resources that support Line of Code services.

## Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/downloads) 1.6.0 or newer
- [Azure CLI](https://learn.microsoft.com/cli/azure/install-azure-cli)
- Contributor access to the target Azure subscription

## Quick start

1. Sign in to Azure:
   ```powershell
   az login
   az account set --subscription <subscription-id>
   ```
2. Copy the example variable file and adjust values for your environment:
   ```powershell
   Copy-Item terraform.tfvars.example terraform.tfvars
   ```
3. Initialize Terraform:
   ```powershell
   terraform init
   ```
4. Review the execution plan:
   ```powershell
   terraform plan
   ```
5. Apply when ready:
   ```powershell
   terraform apply
   ```

## Tooling

- Run common workflows via `make init`, `make fmt`, `make validate`, or `make plan`
- `.editorconfig` enforces consistent formatting across editors
- GitHub Actions workflow (`.github/workflows/terraform-ci.yml`) checks formatting and validation on pushes and pull requests

## Configuration

Key input variables are defined in `variables.tf`:

- `subscription_id` and `tenant_id` can be left blank when using `az login`
- `location` sets the default Azure region (defaults to `eastus`)
- `resource_group_name` defines the shared resource group created by the root module
- `additional_tags` allows merging extra tags with the baseline set defined in `main.tf`

## Next steps

Modules can be added under `modules/` and wired into `main.tf` to compose the full platform architecture. Remote state and environment-specific layouts (e.g., `environments/dev`, `environments/prod`) can be introduced as the design evolves.
