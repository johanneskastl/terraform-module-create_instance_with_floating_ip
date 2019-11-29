#
# floating ip
#

output "floating_ip" {
  value = openstack_networking_floatingip_v2.floating_ip
}

#
# network port
#

output "instance_port" {
  value = openstack_networking_port_v2.instance_port
}

#
# instance
#

output "instance" {
  value = openstack_compute_instance_v2.instance
}

#
# floating IP association
#

output "floating_ip_association" {
  value = openstack_compute_floatingip_associate_v2.floating_ip_association
}
