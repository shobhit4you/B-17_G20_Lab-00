resource "azurerm_resource_group" "Dev-RG" {
  name     = "Demo-RG"
  location = "South India"
}

resource "azurerm_storage_account" "Dev-Storage" {
  name                     = "wessbdevstorage"
  resource_group_name      = azurerm_resource_group.Dev-RG.name
  location                 = azurerm_resource_group.Dev-RG.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

    tags = {
        environment = "dev"
        createdby = "terraform"
    }
}