variable "subscription_id" {
  type        = string
  default     = ""
  description = "Optional Azure subscription ID. Leave blank to use environment configuration."
}

variable "tenant_id" {
  type        = string
  default     = ""
  description = "Optional Azure Active Directory tenant ID. Leave blank to use environment configuration."
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Primary Azure location for resources."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group that will hold shared resources."
}

variable "additional_tags" {
  type        = map(string)
  default     = {}
  description = "Additional resource tags to merge with the default set."
}
