variable "rg_name"{
    description = "name of the Resource Group"
    type = string 
    default = "adedevops-rg"
}

variable "location" {
    description = "location where the resource will be created"
    type = string 
    default = "uksouth"
}
variable "tags" {
    description = "Tags for the resources"
    type = map(string) 
    default ={
        "environment" = "dev"
        "source" = "terraform"
        "purpose" = "testing"
}
}
variable "org_name"{
    description = "Organization name"
    type = string
    default = "adedevops"
}
variable "project_name" {
    description = "project name"
    type = string
    default = "batch1"

}