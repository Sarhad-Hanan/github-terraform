output "vnet_id" {
  description = "ID for det virtuelle nettverket (VNet)"
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "ID for subnettet"
  value       = azurerm_subnet.main.id
}

output "nsg_id" {
  description = "ID for Network Security Group (NSG)"
  value       = azurerm_network_security_group.main.id
}
