module "azurerm_resource_group" {
  source          = "../../modules/azurerm_resource_group"
  resource_groups = var.rgs
}

module "azurerm_virtual_network" {
  source          = "../../modules/azurerm_virtual_network"
  virtual_network = var.vnets
  depends_on      = [module.azurerm_resource_group]
}