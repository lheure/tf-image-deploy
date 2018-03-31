## azurerm_lb

resource "azurerm_lb" "s1uw2-ielb-pdbq-konan" {  name                = "s1uw2-ielb-pdbq-konan"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pdbq-konan-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.4"  private_ip_address_allocation  = "Static"  }  }

resource "azurerm_lb" "s1uw2-ielb-pext" {  name                = "s1uw2-ielb-pext"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pext-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.5"  private_ip_address_allocation  = "Static"  }  }

resource "azurerm_lb" "s1uw2-ielb-pkbrk-konan" {  name                = "s1uw2-ielb-pkbrk-konan"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pkbrk-konan-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-a.id}" private_ip_address = "10.200.250.4"  private_ip_address_allocation  = "Static"  }  }
resource "azurerm_lb" "s1uw2-ielb-pmat" {  name                = "s1uw2-ielb-pmat"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pmat-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.6"  private_ip_address_allocation  = "Static"  }  }



resource "azurerm_lb" "s1uw2-ielb-papi" {  name                = "s1uw2-ielb-papi"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-papi-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.7"  private_ip_address_allocation  = "Static"  }  }



## azurerm_lb_backend_address_pool

resource "azurerm_lb_backend_address_pool" "s1uw2-ielb-pdbq-konan-bpool" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pdbq-konan.id}" name = "s1uw2-ielb-pdbq-konan-bpool" }

resource "azurerm_lb_backend_address_pool" "s1uw2-ielb-pext-bpool" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pext.id}" name = "s1uw2-ielb-pext-bpool" }

resource "azurerm_lb_backend_address_pool" "s1uw2-ielb-pkbrk-konan-bpool" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pkbrk-konan.id}" name = "s1uw2-ielb-pkbrk-konan-bpool" }
resource "azurerm_lb_backend_address_pool" "s1uw2-ielb-pmat-bpool" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pmat.id}" name = "s1uw2-ielb-pmat-bpool" }



resource "azurerm_lb_backend_address_pool" "s1uw2-ielb-papi-bpool" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-papi.id}" name = "s1uw2-ielb-papi-bpool" }





## azurerm_lb_probe

resource "azurerm_lb_probe" "s1uw2-ielb-pdbq-konan-probe" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pdbq-konan.id}" name = "s1uw2-ielb-pdbq-konan-probe" port = 10080 }

resource "azurerm_lb_probe" "s1uw2-ielb-pext-probe" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pext.id}" name = "s1uw2-ielb-pext-probe" port = 10080 }

resource "azurerm_lb_probe" "s1uw2-ielb-pkbrk-konan-probe" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pkbrk-konan.id}" name = "s1uw2-ielb-pkbrk-konan-probe" port = 7579 }
resource "azurerm_lb_probe" "s1uw2-ielb-pmat-probe" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pmat.id}" name = "s1uw2-ielb-pmat-probe" port = 10080 }



resource "azurerm_lb_probe" "s1uw2-ielb-papi-probe" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-papi.id}" name = "s1uw2-ielb-papi-probe" port = 10082 }





## lb rule


resource "azurerm_lb_rule" "s1uw2-ielb-pdbq-konan-rule-10080" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pdbq-konan.id}" name = "s1uw2-ielb-pdbq-konan-rule-10080" protocol = "Tcp" frontend_port = 10080 backend_port = 10080 frontend_ip_configuration_name = "s1uw2-ielb-pdbq-konan-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-pdbq-konan-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-pdbq-konan-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-pdbq-konan-probe"] }

resource "azurerm_lb_rule" "s1uw2-ielb-pext-rule-10080" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pext.id}" name = "s1uw2-ielb-pext-rule-10080" protocol = "Tcp" frontend_port = 10080 backend_port = 10080 frontend_ip_configuration_name = "s1uw2-ielb-pext-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-pext-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-pext-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-pext-probe"] }

resource "azurerm_lb_rule" "s1uw2-ielb-pkbrk-konan-rule-7579" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pkbrk-konan.id}" name = "s1uw2-ielb-pkbrk-konan-rule-7579" protocol = "Tcp" frontend_port = 7579 backend_port = 7579 frontend_ip_configuration_name = "s1uw2-ielb-pkbrk-konan-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-pkbrk-konan-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-pkbrk-konan-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-pkbrk-konan-probe"] }
resource "azurerm_lb_rule" "s1uw2-ielb-pmat-rule-10080" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-pmat.id}" name = "s1uw2-ielb-pmat-rule-10080" protocol = "Tcp" frontend_port = 10080 backend_port = 10080 frontend_ip_configuration_name = "s1uw2-ielb-pmat-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-pmat-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-pmat-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-pmat-probe"] }



resource "azurerm_lb_rule" "s1uw2-ielb-papi-rule-10082" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-papi.id}" name = "s1uw2-ielb-papi-rule-10082" protocol = "Tcp" frontend_port = 10082 backend_port = 10082 frontend_ip_configuration_name = "s1uw2-ielb-papi-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-papi-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-papi-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-papi-probe"] }
resource "azurerm_lb_rule" "s1uw2-ielb-papi-rule-10080" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-papi.id}" name = "s1uw2-ielb-papi-rule-10080" protocol = "Tcp" frontend_port = 10080 backend_port = 10080 frontend_ip_configuration_name = "s1uw2-ielb-papi-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-papi-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-papi-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-papi-probe"] }
resource "azurerm_lb_rule" "s1uw2-ielb-papi-rule-10081" { resource_group_name = "${azurerm_resource_group.rg-01.name}" loadbalancer_id = "${azurerm_lb.s1uw2-ielb-papi.id}" name = "s1uw2-ielb-papi-rule-10081" protocol = "Tcp" frontend_port = 10081 backend_port = 10081 frontend_ip_configuration_name = "s1uw2-ielb-papi-iip" enable_floating_ip = false backend_address_pool_id = "${azurerm_lb_backend_address_pool.s1uw2-ielb-papi-bpool.id}" idle_timeout_in_minutes = 5 probe_id = "${azurerm_lb_probe.s1uw2-ielb-papi-probe.id}" depends_on = ["azurerm_lb_probe.s1uw2-ielb-papi-probe"] }

