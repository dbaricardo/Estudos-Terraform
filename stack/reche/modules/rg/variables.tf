variable "name" {
  description = "Nome do Resource Group"
  type = string
  default = "rg-ciano"
}

variable "location" {
  description = "Location do Resource Group. Ex:eastus2"
  type = string
  default = "brazilsouth"
}

variable "tags" {
    description = "Adiciona tags chave:valor"
    type = map
    default = {
        "project" = "ciano"
        "enviroment" = "dev"
        "manageable" = "terraform"
    }
  
}