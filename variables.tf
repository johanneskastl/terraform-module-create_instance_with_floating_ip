#
# Number of instances
#

variable "desired_number" {
  description = "Number of instances to create"
  default     = 1
}

#
# floating IP
#

variable "floating_ip_pool" {
  description = "Which pool to create the floating IP in?"
}

#
# network port
#

variable "port_name_or_prefix" {
  description = "Name of the port"
}

variable "port_network_id" {
  description = "ID of the network where the port is to be created"
}

variable "port_security_group_ids" {
  type        = list
  description = "List of security group IDs"
}

variable "port_admin_state_up" {
  description = "Value for admin_state_up"
  default     = true
}

variable "port_allowed_ip_adresses" {
  description = "IP address allowed to run in this port (virtual IPs)"
  default     = []
}

#
# instance
#

variable "instance_name_or_prefix" {
  description = "Name for the new instance"
}

variable "instance_flavor_name" {
  description = "Name of the flavor to use for the new instance"
}

variable "instance_image_name" {
  description = "Name of the image to use for the new instance"
}

variable "instance_user_data" {
  description = "Userdata to be used for the new instance"
}

variable "instance_config_drive" {
  type        = bool
  description = "Whether or not to use a ConfigDrive for the new instance"
  default     = false
}
