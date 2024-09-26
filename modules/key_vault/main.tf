resource "azurerm_key_vault" "main" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}

resource "azurerm_key_vault_secret" "vm_admin_username" {
  name         = "vm-admin-username"
  value        = var.admin_username
  key_vault_id = azurerm_key_vault.main.id
}

resource "azurerm_key_vault_secret" "vm_admin_password" {
  name         = "vm-admin-password"
  value        = var.admin_password
  key_vault_id = azurerm_key_vault.main.id
}

resource "azurerm_key_vault_secret" "storage_account_access_key" {
  name         = "storage-account-access-key"
  value        = var.storage_account_primary_key
  key_vault_id = azurerm_key_vault.main.id
}
