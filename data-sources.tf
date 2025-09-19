# Reference an existing resource group (web-server-rg)
data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}
