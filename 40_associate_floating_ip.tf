# Associate floating IPs with the instances

resource "openstack_compute_floatingip_associate_v2" "floating_ip_associations" {
  count       = var.desired_number
  floating_ip = openstack_networking_floatingip_v2.floating_ips[count.index].address
  instance_id = openstack_compute_instance_v2.instances[count.index].id
}
