resource "azurerm_resource_group" "my_res_grp" {                         
  name        = "fromterraform"
  location    ="eastUS"
  tags        = {
    project   = "mylearning",
    env       = "dev"


  }


}

resource "azurerm_storage_account" "my_storage_account" {
    name     ="mystorageaccountofoct17"
    resource_group_name       ="fromterraform"
    location                  ="eastUS"
    account_tier              = "Standard"
    account_replication_type  = "GRS"
    tags                      = {
      project                 = "mylearning",
      env                     = "dev"


  }
}