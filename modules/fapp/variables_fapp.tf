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

variable "app_service_plan_id" {
  default = ""

}

variable "storage_account_name" {
  default = ""

}

variable "storage_account_access_key" {
  default = ""

}
