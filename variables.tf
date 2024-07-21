locals {
  vnet_name      = "hub-Vnet-tf"
  vnet_addresses = ["10.0.0.0/16"]
}

variable "name" {
  description = "(Required) the name of the vnet resource"
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which the subnet will be created."
  type        = string
}

variable "location" {
  description = "(Required) The location of the Vnet."
  type        = string
}

variable "address_space" {
    description = "(Required) The address space that is used the virtual network."
    type = list(string)
}
