variable "resource_group_name" {
  type = string
  description = "Navn på ressursgruppen som nettverket tilhører"
}

variable "location" {
  type = string
  description = "Lokasjon for ressursene"
}

variable "vnet_name" {
  type = string
  description = "Navn på det virtuelle nettverket (VNet)"
}

variable "address_space" {
  type = list(string)
  description = "Adressrommet for VNettet, f.eks. 10.0.0.0/16"
}

variable "subnet_name" {
  type = string
  description = "Navn på subnettet"
}

variable "subnet_prefixes" {
  type = list(string)
  description = "Adressrommet for subnettet, f.eks. 10.0.1.0/24"
}

variable "nsg_name" {
  type = string
  description = "Navn på Network Security Group (NSG)"
}
