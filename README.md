# Folder
 Introduction
 This is the terraform script to create RG and storage account,FunctionApp using module
 Folder structure
 	tf_main -> which has main terraform scripts
	variables -> is having all the variables and default values
	outputs.tf -> is having all the values that are writing outputs
	README.md -> is containing all the help
# Pre-requisites
   1. Need to have Azure service principal -> with contributor role is assigned
   2. Set below envirnment variables
	    ARM_TENANT_ID
	    ARM_SUBSCRIPTION_ID
	    ARM_CLIENT_ID
	    ARM_CLIENT_SECRET
# Terraform commands
    - Run all the terraform commands from tf_main folder
    - No need to import/reference. with in the folder, terraform understands and reads all the .tf files
    ---------
    Terraform Init
    Terraform validate
    Terraform plan
    Terraform apply
    Terraform destroy
    ---------
