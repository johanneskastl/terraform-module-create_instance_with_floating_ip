# Create the instances

resource "openstack_compute_instance_v2" "instances" {
  count        = var.desired_number
  name         = "${var.instance_name_or_prefix}${format("%02d", count.index + 1)}"
  flavor_name  = var.instance_flavor_name
  image_name   = var.instance_image_name
  user_data    = var.instance_user_data
  config_drive = var.instance_config_drive
  depends_on   = [openstack_networking_port_v2.instance_ports, var.module_depends_on]

  network {
    port = openstack_networking_port_v2.instance_ports[count.index].id
  }

  dynamic "network" {
    for_each = var.instance_id_of_second_network == "" ? [] : [var.instance_id_of_second_network]
    content {
      uuid = network.value
    }
  }
}
