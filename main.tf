resource "azurerm_virtual_network" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  lifecycle {
    ignore_changes = [tags]
  }
}

module "diagnostic_setting" {
  source = "git::https://github.com/Noya50/hafifot-diagnosticSetting.git?ref=main"

  name                       = "${azurerm_virtual_network.this.name}-diagnostic-setting"
  target_resource_id         = azurerm_virtual_network.this.id
  log_analytics_workspace_id = var.log_analytics_workspace_id
}
