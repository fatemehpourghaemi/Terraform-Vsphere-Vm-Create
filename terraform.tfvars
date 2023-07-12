#Credentials
vsphere_user = ""
vsphere_password = ""
vsphere_server = ""

#Where to deploy
vsphere_datacenter = ""
vsphere_datastore = ""
vsphere_resource_pool = ""
vsphere_cluster = ""
vsphere_network = ""

#Network configs
ipv4_address = ""
ipv4_gateway = ""
ipv4_netmask = 24
host_name = ""
domain = ""
dns_servers = [ "", "" ]
dns_suffix_servers = [ "", ""]
time_zone = ""

#VM specification
vm_names = ["vm-1"]
vm_count = "1"  
num_cpus   = "1"
num_cores_per_socket = "1"
memory   = "1024" 
memory_hot_add = true
cpu_hot_add = true
disksize = "50"
thin = true
vm_guest_id = ""
vsphere_virtual_machine_template = ""
