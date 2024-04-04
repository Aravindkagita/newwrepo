provider "azurerm" {
  features {}

  client_id       = "acaa680e-7ef9-4a8d-a1ed-c2d9e8e58eab"
  client_secret   = "GIg8Q~MWGTl.iJExw4bJICxxGsQbeWmRzraBObEm"
  tenant_id       = "0bff8bfb-9ee5-4404-8438-79672cfb875d"
  subscription_id = "bcb32e76-cdde-48fb-8ef8-9fe9e94ba8a1"
}

resource "azurerm_resource_group" "rg2" {
  name     = var.azurerm_resource_group_rg2_name
  location = var.azurerm_resource_group_rg2_location
}
