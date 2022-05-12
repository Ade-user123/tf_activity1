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