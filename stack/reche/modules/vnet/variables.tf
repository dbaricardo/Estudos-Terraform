variable "vnet_name" {
  description = "Nome da vnet a ser criada"
  type = string
  default = "ciano-vnet-devi"
}

variable "vnet_location" {
  description = "Local a ser criado. Ex: brazilsouth"
  type = string
  default = "brazilsouth"
}

variable "vnet_resource_group" {
  description = "Nome do Resource Group"
  type = string
  default = "rg-ciano"
}

variable "tags" {
  description = "Tags do rescurso"
  type = map
  default = {
      "environment" = "dev"
      "project" = "ciano"
      "manageable" = "terraform"
  }
}
