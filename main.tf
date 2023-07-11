resource "vsphere_virtual_machine" "vm" {
  count            = var.vm_count
  name             = var.vm_names[count.index] #Generate unique names using the count index
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  cpu_hot_add_enabled      = var.memory_hot_add
  memory_hot_add_enabled   = var.cpu_hot_add

  num_cpus         = var.num_cpus
  num_cores_per_socket = var.num_cores_per_socket
  memory           = var.memory
  guest_id         = var.vm_guest_id
  wait_for_guest_net_timeout = 30 
 
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id    
  }

  disk {
    
    label            = "${var.vm_names[count.index]}-disk"
    size             = var.disksize
    thin_provisioned = var.thin
  }

  network_interface {
    network_id = data.vsphere_network.network.id
  }
}