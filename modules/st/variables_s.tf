// variable declaration for storage account
variable "location" {
    description = "location where the resource will be created"
    default = "uksouth"
}
variable "account_tier" {
  default = "Standard"
}
variable "account_replication_type" {
    default = "GRS"
}
variable "tags" {
    description = "Tags for the resources"
    type = map(string) 
    default ={
        "environment" = "dev"
        "source" = "terraform"
}
}
variable "resource_group_name"{
    
    default = "adedevops-modules-RGFunctionApp"
}
variable "storage_name"{
    
    default = "adedevopsfappstorage"
}
// variable declaration for service plan
variable "sp_name"{
    default = "adedevopsmoduleserviceplan"
}
variable "splocation" {
    description = "location where the resource will be created"
    default = "uksouth"
}
variable "spresource_group_name" {
  default = "adedevops-modules-RGFunctionApp"
}

// variable declaration for functionApp
variable "fapp_name" {
  default = "adedevopsmodulefunctionapp"
}
variable "fapplocation" {
    description = "location where the resource will be created"
    default = "uksouth"
}
variable "fappresource_group_name" {
  default = "adedevops-modules-RGFunctionApp"

}