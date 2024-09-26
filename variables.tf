<<<<<<< HEAD
variable "resource_group_name" {
  type        = string
  description = "Navn på ressursgruppen"
}

variable "location" {
  type        = string
  description = "Lokasjon for ressursene"
}

variable "vnet_name" {
  type        = string
  description = "Navn på det virtuelle nettverket (VNet)"
}

variable "address_space" {
  type        = list(string)
  description = "Adressrommet for VNettet, f.eks. 10.0.0.0/16"
}

variable "subnet_name" {
  type        = string
  description = "Navn på subnettet"
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "Adressrommet for subnettet, f.eks. 10.0.1.0/24"
}

variable "nsg_name" {
  type        = string
  description = "Navn på Network Security Group (NSG)"
}

variable "storage_account_name" {
  type        = string
  description = "Navn på lagringskontoen"
}

variable "account_tier" {
  type        = string
  description = "Nivå for lagringskontoen (Standard eller Premium)"
}

variable "replication_type" {
  type        = string
  description = "Replikeringstype for lagringskontoen (f.eks. LRS, GRS)"
}

variable "container_name" {
  type        = string
  description = "Navn på Blob Container"
}

variable "vm_name" {
  type        = string
  description = "Navn på den virtuelle maskinen"
}

variable "vm_size" {
  type        = string
  description = "Størrelse på den virtuelle maskinen (f.eks. Standard_B2s)"
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

variable "key_vault_name" {
  type        = string
  description = "Navn på Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}
=======
variable "resource_group_name" {
  type        = string
  description = "Navn på ressursgruppen"
}

variable "location" {
  type        = string
  description = "Lokasjon for ressursene"
}

variable "vnet_name" {
  type        = string
  description = "Navn på det virtuelle nettverket (VNet)"
}

variable "address_space" {
  type        = list(string)
  description = "Adressrommet for VNettet, f.eks. 10.0.0.0/16"
}

variable "subnet_name" {
  type        = string
  description = "Navn på subnettet"
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "Adressrommet for subnettet, f.eks. 10.0.1.0/24"
}

variable "nsg_name" {
  type        = string
  description = "Navn på Network Security Group (NSG)"
}

variable "storage_account_name" {
  type        = string
  description = "Navn på lagringskontoen"
}

variable "account_tier" {
  type        = string
  description = "Nivå for lagringskontoen (Standard eller Premium)"
}

variable "replication_type" {
  type        = string
  description = "Replikeringstype for lagringskontoen (f.eks. LRS, GRS)"
}

variable "container_name" {
  type        = string
  description = "Navn på Blob Container"
}

variable "vm_name" {
  type        = string
  description = "Navn på den virtuelle maskinen"
}

variable "vm_size" {
  type        = string
  description = "Størrelse på den virtuelle maskinen (f.eks. Standard_B2s)"
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

variable "key_vault_name" {
  type        = string
  description = "Navn på Key Vault"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}
>>>>>>> e13cdf339230b9a636b4c4d4e40208ac5494dc2a
