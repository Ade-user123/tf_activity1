
// Creating storage account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}

//  creating Service Plan
resource "azurerm_app_service_plan" "serviceplan" {
  name                = var.sp_name 
  location            = var.splocation 
  resource_group_name = var.spresource_group_name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

// Creating Function App
resource "azurerm_function_app" "functionapp" {
  name                       = var.fapp_name
  location                   = var.fapplocation
  resource_group_name        = var.fappresource_group_name
  app_service_plan_id        = azurerm_app_service_plan.serviceplan.id
  storage_account_name       = var.storage_name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
}