# Create the instances

resource "openstack_compute_instance_v2" "instances" {
  count           = var.desired_number
  name            = "${var.instance_name_or_prefix}[count.index + 1]"
  flavor_name     = var.instance_flavor_name
  image_name      = var.instance_image_name
  user_data       = var.instance_user_data
  config_drive    = var.instance_config_drive

  network {
    port = openstack_networking_port_v2.instance_ports[count.index].id
  }
}
