provider "azurerm" {
    features{}
}

module "resource_group"{
    source = "../modules/rg"
}  
module "storage_account" {
  source = "../modules/st"
  depends_on =         [module.resource_group]
  resource_group_name = module.resource_group.resource_group_name
}
module "service_plan" {
  source = "../modules/sp"
  depends_on =         [module.resource_group]
}

module "function_app" {
  source = "../modules/fapp"
  depends_on =         [module.storage_account, module.service_plan]
  storage_account_access_key = module.storage_account.azurerm_app_storage_primaryacess
  storage_account_name = module.storage_account.azurerm_app_storage_name
  app_service_plan_id = module.service_plan.azurerm_app_service_plan_id
}