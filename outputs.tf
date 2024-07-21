output "name" {
  value       = azurerm_virtual_network.this.name
  description = "The name of the Vnet."
}

output "id" {
  value       = azurerm_virtual_network.this.id
  description = "The id of the Vnet."
}

output "resource_group_name" {
  value       = azurerm_virtual_network.this.resource_group_name
  description = "The name of the resource group of the Vnet."
}

output "location" {
  value       = azurerm_virtual_network.this.location
  description = "The location of the Vnet."
}
