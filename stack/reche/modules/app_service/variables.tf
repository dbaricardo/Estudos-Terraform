variable "app_service_name" {
  description = "Nome do app service"
  type = string
  default = "admx"
}

variable "app_service_group" {
  description = "Resource group do recurso"
  type = string
  default = "rg-ciano"
}

variable "app_service_location" {
  description = "Localizacao do recurso. Ex: brazilsouth"
  type = string
}

variable "app_service_plan_id" {
  description = "Apontar o campo de id do recurso ASP"
  type = string
}

variable "app_config" {
  type = map
  default = {
      "dotnet_framework_version" = "v5.0"}
}

variable "app_settings" {
  type = map
  default = {
      "teste" = "testado"
  }
}

variable "app_conn_string" {
  type = map(string)
  default = {
    "name"  = "Database",
    "type"  = "SQLServer",
    "value" = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}