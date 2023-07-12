variable "vsphere_user" {
    description = "the user name you use in vCenter"
    type = string
}

variable "vsphere_password" {
    description = "the passwod to access vCenter"
    type = string
}

variable "vsphere_server" {
    description = "The server you're cennecting to use the API."
    type = string
}

variable "vm_count" {
    description = "the amount of vms you want to create"
    type = string
}

variable "vm_names" {
    description = "A list of names for the vms"
    type = list(string)  
    default = ["vm-1", "vm-2", "vm-3"] # Add more names as needed
}

variable "vsphere_resource_pool" {
    type = string
    description = "Reference ID of the resource pool to put this virtual machine in."
}

variable "vsphere_datacenter" {
  type        = string
  description = "The name of the datacenter in which to create the vm."
}

variable "vsphere_datastore" {
  type        = string
  description = "The name of the datastore in which to create the vm."
}

variable "vsphere_cluster" {
  type = string
  description = "The cluster in which you are creating the vm."
}


variable "num_cpus" {
  type        = string
  description = "The total number of virtual processor cores to assign to this virtual machine."
}

variable "memory" {
  type        = string
  description = "The size of the virtual machine's memory, in MB."
}

variable "disksize" {
    type = string
    description = "The disk size of the vm in GB."
  
}

variable "vsphere_network" {
  type        = string
  description = "The managed object reference ID of the Network."
}

variable "vsphere_virtual_machine_template" {
  type        = string
  description = " The UUID of the source virtual machine or template."
  #The template should already exist in your vSphere environment.
}

variable "vm_guest_id" {
    type = string
    description = "The guest ID of the OS you are using."
  
}

variable "thin" {
    type = bool
    description = "Set to true in order to thin provisioning" 
}

variable "num_cores_per_socket" {
    type = string
    description = "The number of cores per socket"  
}

variable "memory_hot_add" {
  type = bool
  description = "Memory hotplug"
}

variable "cpu_hot_add" {
  type = bool
  description = "Cpu hotplug "
}

variable "host_name" {
  type = string
  description = "The host name for the new created vm."
}

variable "time_zone" {
  type = string
  description = "The time zone to configure for the vm."
}

variable "domain" {
  type = string
  description = "The domain to be set for the VM."
}

variable "ipv4_address" {
  type = string
  description = "The IP address for the VM."
}

variable "ipv4_gateway" {
  type = string
  description = "The IP address of the gateway."
}

variable "ipv4_netmask" {
  type = number
  description = "The netmask for the VM."
}

variable "dns_servers" {
  type = list(string)
  description = "The list of DNS servers."
}

variable "dns_suffix_servers" {
  type = list(string)
  description = "A list of DNS search domains to add to the DNS configuration "
}
