output "vm_public_ip" {
  description = "Den offentlige IP-adressen til VM-en"
  value       = azurerm_public_ip.main.ip_address
}

output "vm_id" {
  description = "ID-en til VM-en"
  value       = azurerm_virtual_machine.main.id
}
