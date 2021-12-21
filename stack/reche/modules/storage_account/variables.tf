variable "storage_name" {
  description = "Nome do Recurso a ser criado"
  type = string
  default = "cianodev01"
}

variable "resource_group" {
  description = "Nome do Resource Group"
  type = string
  default = "rg-ciano"
}


variable "storage_location" {
  description = "Local onde o recurso deve ser criado. Ex: brazilsouth"
  type = string
  default = "brazilsouth"
}

variable "tags" {
  description = "Adiciona tags, chave = valor"
  type = map
  default = {
      "ambiente" = "dev"
      "aroject" = "ciano"
      "manageable" = "terraform"
  }
}