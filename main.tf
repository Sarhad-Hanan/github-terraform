provider "azurerm" {
  subscription_id = "70438f0b-03a6-455f-a559-dd257af223a9"
  features {}
}

# Ressursgruppe
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

# Koble ressursgruppen til alle moduler
module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes
  nsg_name            = var.nsg_name
}

module "storage_account" {
  source               = "./modules/storage_account"
  resource_group_name  = azurerm_resource_group.main.name
  location             = var.location
  storage_account_name = var.storage_account_name
  account_tier         = var.account_tier
  replication_type     = var.replication_type
  container_name       = var.container_name
}

module "key_vault" {
  source                      = "./modules/key_vault"
  resource_group_name         = azurerm_resource_group.main.name
  location                    = var.location
  key_vault_name              = var.key_vault_name
  tenant_id                   = var.tenant_id
  admin_username              = var.admin_username
  admin_password              = var.admin_password
  storage_account_primary_key = module.storage_account.storage_account_primary_key
}

module "virtual_machine" {
  source              = "./modules/virtual_machine"
  resource_group_name = azurerm_resource_group.main.name
  location            = var.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.network.subnet_id
}

# Hent VM-brukernavn og passord fra Key Vault
data "azurerm_key_vault_secret" "vm_admin_username" {
  name         = "vm-admin-username"
  key_vault_id = module.key_vault.key_vault_id
}

data "azurerm_key_vault_secret" "vm_admin_password" {
  name         = "vm-admin-password"
  key_vault_id = module.key_vault.key_vault_id
}
