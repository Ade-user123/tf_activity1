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
      

