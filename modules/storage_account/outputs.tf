output "storage_account_id" {
  description = "ID for lagringskontoen"
  value       = azurerm_storage_account.main.id
}

output "storage_account_primary_key" {
  description = "Primærnøkkelen for lagringskontoen"
  value       = azurerm_storage_account.main.primary_access_key
}

output "container_name" {
  description = "Navnet på Blob Container"
  value       = azurerm_storage_container.main.name
}
