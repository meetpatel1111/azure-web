variable "resource_group_name" {
  description = "Existing resource group to deploy into"
  type        = string
  default     = "web-server-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "vm_name" {
  type    = string
  default = "web-server-vm"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key (ssh-rsa AAAA... ) - set via terraform.auto.tfvars or CI secret"
  type        = string
  sensitive   = true

  validation {
    condition     = length(trimspace(var.admin_ssh_public_key)) > 0
    error_message = "admin_ssh_public_key must be provided and not empty. Set it via terraform.auto.tfvars or CI secret ADMIN_SSH_PUB."
  }
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "os_disk_size_gb" {
  type    = number
  default = 64
}
