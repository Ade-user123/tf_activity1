variable "rg_name"{
    description = "Resorce group name"
    default = "adedevops-modules-RGFunctionApp"
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
