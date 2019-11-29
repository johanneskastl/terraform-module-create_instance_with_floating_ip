# Create floating IPs for clients

resource "openstack_networking_floatingip_v2" "floating_ip" {
  pool  = var.floating_ip_pool
}
