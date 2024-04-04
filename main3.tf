resource "azurerm_virtual_network" "vnet4" {
  name                = var.azurerm_virtual_network_vnet4_name
  address_space       = var.azurerm_virtual_network_vnet4_address_space
  location            = var.azurerm_resource_group_rg2_location
  resource_group_name = var.azurerm_resource_group_rg2_name
  depends_on = [ azurerm_resource_group.rg2 ]

}

resource "azurerm_subnet" "subnet3" {
  name                 = var.azurerm_subnet_subnet3_name
  resource_group_name  = var.azurerm_resource_group_rg2_name
  virtual_network_name = var.azurerm_virtual_network_vnet4_name
  address_prefixes     = var.azurerm_subnet_subnet3_address_prefixes
  depends_on = [ azurerm_virtual_network.vnet4 ]
}

resource "azurerm_subnet" "subnet4" {
  name                 = var.azurerm_subnet_subnet4_name
  resource_group_name  = var.azurerm_resource_group_rg2_name
  virtual_network_name = var.azurerm_virtual_network_vnet4_name
  address_prefixes     = var.azurerm_subnet_subnet4_address_prefixes
  depends_on = [ azurerm_virtual_network.vnet4 ]
}

