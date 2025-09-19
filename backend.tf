# backend.tf
# We intentionally do NOT hardcode backend config here; CI / local init will pass backend-config at `terraform init`.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}
