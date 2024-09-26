output "vm_public_ip" {
  description = "Den offentlige IP-adressen til VM-en"
  value       = module.virtual_machine.vm_public_ip
}

output "storage_account_primary_key" {

  description = "Primærnøkkelen for lagringskontoen"
  value       = module.storage_account.storage_account_primary_key
  sensitive   = true
}

output "key_vault_id" {
  description = "ID for Key Vault"
  value       = module.key_vault.key_vault_id
}
