output "azurerm_app_storage_name" {
  value = azurerm_storage_account.storage.name
}
output "azurerm_app_storage_primaryacess" {
  value = azurerm_storage_account.storage.primary_access_key
}
