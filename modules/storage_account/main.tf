resource "azurerm_storage_account" "test_stg" {
  name = var.Dev_STG
  resource_group_name = var.rg_name
  location = var.location
  account_replication_type = "LRS"
  account_tier = "Standard"
}

resource "azurerm_storage_container" "CN"{
  name                  = "tfstate"
  depends_on = [ azurerm_storage_account.test_stg ]
  storage_account_id    = azurerm_storage_account.test_stg.id
  container_access_type = "private"
}