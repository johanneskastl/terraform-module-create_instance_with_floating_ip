# create ports to use with the instances

resource "openstack_networking_port_v2" "instance_ports" {
  count              = var.desired_number
  name               = "${var.port_name_or_prefix}${format("%02d", count.index + 1)}"
  network_id         = var.port_network_id
  admin_state_up     = var.port_admin_state_up
  security_group_ids = var.port_security_group_ids

  dynamic "allowed_address_pairs" {
    for_each = var.port_allowed_ip_adresses == [] ? [] : var.port_allowed_ip_adresses
    content {
      ip_address = allowed_address_pairs.value
    }
  }
}
