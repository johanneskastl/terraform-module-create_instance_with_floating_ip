# create ports to use with the instances

resource "openstack_networking_port_v2" "instance_ports" {
  count              = var.desired_number
  name               = "$ {var.port_name_or_prefix}[count.index + 1]}"
  network_id         = var.port_network_id
  admin_state_up     = var.port_admin_state_up
  security_group_ids = var.port_security_group_ids
}