# Create the instance

resource "openstack_compute_instance_v2" "instance" {
  name            = var.instance_name_or_prefix
  flavor_name     = var.instance_flavor_name
  image_name      = var.instance_image_name
  user_data       = var.instance_user_data
  config_drive    = var.instance_config_drive

  network {
    port = openstack_networking_port_v2.instance_port.id
  }
}
