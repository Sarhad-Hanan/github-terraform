variable "resource_group_name" {
  type        = string
  description = "Navn på ressursgruppen som lagringskontoen tilhører"
}

variable "location" {
  type        = string
  description = "Lokasjon for lagringskontoen"
}

variable "storage_account_name" {
  type        = string
  description = "Navn på lagringskontoen"
}

variable "account_tier" {
  type        = string
  description = "Lagringskontonivå (Standard eller Premium)"
}

variable "replication_type" {
  type        = string
  description = "Replikeringstype for lagringskontoen (f.eks. LRS, GRS)"
}

variable "container_name" {
  type        = string
  description = "Navn på Blob Container"
}
