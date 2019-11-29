# create port to use with the instance

resource "openstack_networking_port_v2" "instance_port" {
  name               = var.port_name_or_prefix
  network_id         = var.port_network_id
  admin_state_up     = var.port_admin_state_up
  security_group_ids = var.port_security_group_ids
}
