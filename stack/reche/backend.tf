terraform {
  backend "azurerm" {
    resource_group_name = "terraform_state"
    storage_account_name = "strterraformstate"
    container_name = "terraformstate"
    key = "rlRxsNyKkJz+7ltcURt/w98/WpQVVuLvha8v1v2OxTbTqnDtow2anbgO5FIxYhe2vG0QSmGbGktMH04ey19+fg=="     
  }
}