provider "azurerm" {
    features{}
}

module "resource_group"{
    source = "../modules/rg"
}  
module "storage_account" {
  source = "../modules/st"
  depends_on =         [module.resource_group]
  // assigning resource group name to "resource_group_name" variable
  resource_group_name = module.resource_group.resource_group_name
   // assigning location name to "location" variable
  location = module.resource_group.resource_location_name
}
module "service_plan" {
  source = "../modules/sp"
  depends_on =         [module.resource_group]
  // assigning resource group name to "sresource_group_name" variable
  spresource_group_name =  module.resource_group.resource_group_name
  // assigning location name to "splocation" variable
  splocation = module.resource_group.resource_location_name
}

module "function_app" {
  source = "../modules/fapp"
  depends_on =         [module.storage_account, module.service_plan]
  // assigning resource group name to "fappresource_group_name" variable
  fappresource_group_name = module.resource_group.resource_group_name
  // assigning location name to "fapplocation" variable
  fapplocation = module.resource_group.resource_location_name
  // assigning stroage account access key name to "storage_account_access_key" variable
  storage_account_access_key = module.storage_account.azurerm_app_storage_primaryacess
  // assigning stroage account name to "storage_account_name" variable
  storage_account_name = module.storage_account.azurerm_app_storage_name
  // assigning service plan id to "app_service_plan_id" variable
  app_service_plan_id = module.service_plan.azurerm_app_service_plan_id
}