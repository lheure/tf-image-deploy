resource "azurerm_lb" "s1uw2-ielb-pdbq-konan" {
  name                = "s1uw2-ielb-pdbq-konan"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rg-01.name}"

  frontend_ip_configuration {
    name = "s1uw2-ielb-pdbq-konan-iip"
    subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}"
    private_ip_address = "10.200.90.4"
    private_ip_address_allocation  = "Static"
  }
}