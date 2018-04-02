# s1uw2-elb-frnt
# application gateway 로 구성

resource "azurerm_subnet" "sub-pub-appgw" {
  name                 = "sub-pub-appgw"
  resource_group_name  = "${azurerm_resource_group.rg-01.name}"
  virtual_network_name = "${azurerm_virtual_network.vnet-01.name}"
  address_prefix       = "10.200.5.0/24"
}



resource "azurerm_public_ip" "s1uw2-elb-frnt-pip" {
  name                         = "s1uw2-elb-frnt-pip"
  location                     = "${var.location}"
  resource_group_name          = "${azurerm_resource_group.rg-01.name}"
  public_ip_address_allocation = "Static"
}

resource "azurerm_application_gateway" "s1uw2-elb-frnt" {
  name                = "s1uw2-elb-frnt"
  resource_group_name = "${azurerm_resource_group.rg-01.name}"
  location            = "${var.location}"

  sku {
    name           = "Standard_Small"
    tier           = "Standard"
    capacity       = 2
  }

  gateway_ip_configuration {
      name         = "s1uw2-elb-frnt-pip-gwip"
      subnet_id    = "${azurerm_virtual_network.vnet-01.id}/subnets/${azurerm_subnet.sub-pub-appgw.name}"
  }

  frontend_port {
      name         = "s1uw2-elb-frnt-fport"
      port         = 443
  }

  frontend_ip_configuration {
      name         = "s1uw2-elb-frnt-pip"
      public_ip_address_id = "${azurerm_public_ip.s1uw2-elb-frnt-pip.id}"
  }

  backend_address_pool {
      name = "s1uw2-elb-frnt-bpool"
  }

  backend_http_settings {
      name                  = "s1uw2-elb-frnt-bpool-http"
      cookie_based_affinity = "Disabled"
      port                  = 10080
      protocol              = "Http"
      request_timeout        = 1
  }

  http_listener {
        name                                  = "s1uw2-elb-frnt-httplstn"
        frontend_ip_configuration_name        = "s1uw2-elb-frnt-pip"
        frontend_port_name                    = "s1uw2-elb-frnt-fport"
        protocol                              = "Http"
  }

  request_routing_rule {
          name                       = "s1uw2-elb-frnt-rqrt"
          rule_type                  = "Basic"
          http_listener_name         = "s1uw2-elb-frnt-httplstn"
          backend_address_pool_name  = "s1uw2-elb-frnt-bpool"
          backend_http_settings_name = "s1uw2-elb-frnt-bpool-http"
  }
}
