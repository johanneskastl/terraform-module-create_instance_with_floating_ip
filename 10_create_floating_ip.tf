# Create floating IPs for clients

resource "openstack_networking_floatingip_v2" "floating_ips" {
  count       = var.desired_number
  pool        = var.floating_ip_pool
  depends_on  = [var.module_depends_on]
}
