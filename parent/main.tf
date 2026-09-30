module "resource_group" {
  source = "../child/azurerm_resource_group"
  rgs =var.resource_groups
}
module "virtual_network" {
    source = "../child/azurerm_virtual_network"
vnets =var.vnet
depends_on = [ module.resource_group ]
}
