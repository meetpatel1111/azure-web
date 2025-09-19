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
  description = "SSH public key (ssh-rsa AAAA... )"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "os_disk_size_gb" {
  type    = number
  default = 64
}
