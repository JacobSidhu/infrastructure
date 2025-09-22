locals {
  default_tags = {
    ManagedBy   = "terraform"
    Environment = terraform.workspace
  }

  tags = merge(local.default_tags, var.additional_tags)
}

resource "azurerm_resource_group" "core" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}
