variable account_replication_type{
    default = "GRS"
}
variable "account_tier" {
  default = "Standard"
}
variable "st_name"{
    description = "name of the Storage Account"
    default = "adedevopsstorageaccount"
}
variable "rg_name"{
    description = "name of the Resource Group"
    default = "adedevops-rg-storage"
}

variable "location" {
    description = "location where the resource will be created"
    default = "uksouth"
}
variable "tags" {
    description = "Tags for the resources"
    type = map(string) 
    default ={
        "environment" = "dev"
        "source" = "terraform"
}
}