output "public_ip" {
  description = "Public IP assigned to VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}
