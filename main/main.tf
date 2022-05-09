provider "azurerm" {
    features{}
}
resource "azurerm_resource_group" "resource_group"{
    name = "adedevops-rg"
    location = "uksouth"
    tags = {
        environment = "dev"
        source = "terraform"
        purpose = "testing"
           }
}