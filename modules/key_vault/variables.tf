variable "resource_group_name" {
  type        = string
  description = "Navn på ressursgruppen som Key Vault tilhører"
}

variable "location" {
  type        = string
  description = "Lokasjon for Key Vault"
}

variable "key_vault_name" {
  type        = string
  description = "Navn på Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "admin_username" {
  type        = string
  description = "Administrator brukernavn for VM-en"
}

variable "admin_password" {
  type        = string
  description = "Administrator passord for VM-en"
  sensitive   = true
}

variable "storage_account_primary_key" {
  type        = string
  description = "Primærnøkkel for Storage Account"
  sensitive   = true
}
