variable "resource_group_name" {
  type        = string
  description = "Navn på ressursgruppen som VM-en tilhører"
}

variable "location" {
  type        = string
  description = "Lokasjon for den virtuelle maskinen"
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

variable "subnet_id" {
  type        = string
  description = "ID for subnettet som VM-en skal kobles til"
}
