#Criando o App Service Plan
resource "azurerm_app_service_plan" "asp" {
  name = "${var.asp_name}"
  location = "${var.asp_location}"
  resource_group_name = "${var.asp_resource_group_name}"
  kind = "${var.asp_kind}"

  sku {
    tier = "${var.asp_sku_tier}"
    size = "${var.asp_sku_size}"
  }

  tags = "${var.asp_tags}"
}