variable "asp_name" {
  description = "Nome do recurso"
  type = string
  default = "asp-ciano"
}

variable "asp_location" {
  description = "Location do recurso. Ex: brazilsouth"
  type = string
  default = "brazilsouth"
}

variable "asp_resource_group_name" {
  description = "Nome do Resource Group onde sera atribuido o recurso"
  type = string
  default = "rg-ciano"
}

variable "asp_kind" {
  description = "Tipo do Sistema Operacional. Ex: Windows ou Linux"
  type = string
  default = "Windows"
}

variable "asp_sku_tier" {
  description = "Tipo do tier. Ex: Standard"
  type = string
  default = "Standard"
}

variable "asp_sku_size" {
  description = "Tipo do size. Ex: S1"
  type = string
  default = "S1"
}

variable "asp_tags" {
  description = "Tags para o recurso"
  type = map(string)
  default = {
      "project" = "ciano"
      "environment" = "dev"
      "manageable" = "terraform"
  }
}