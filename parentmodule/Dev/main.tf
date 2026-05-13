module "azurerm_resource_group" {
  source = "../../childmodule/RG"
  rgs    = var.rgs
}

module "azurerm_storage_account" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../childmodule/STG"
  stgs       = var.stsg
}

module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../childmodule/Vnet"
  vnets      = var.vnets

}

module "azurerm_subnet" {
  depends_on = [module.azurerm_virtual_network]
  source     = "../../childmodule/Subnet"
  snet       = var.snet
}