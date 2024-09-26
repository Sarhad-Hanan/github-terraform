output "key_vault_id" {
  description = "ID for Key Vault"
  value       = azurerm_key_vault.main.id
}

output "vm_password_secret_id" {
  description = "ID for VM-passordhemmeligheten i Key Vault"
  value       = azurerm_key_vault_secret.vm_admin_password.id
}
