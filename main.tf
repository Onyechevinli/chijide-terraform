resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-rg"
  location = var.location
}

# Storage Account 1
resource "azurerm_storage_account" "storage1" {
  name                     = "${var.name}store1"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Storage Account 2
resource "azurerm_storage_account" "storage2" {
  name                     = "${var.name}store2"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
