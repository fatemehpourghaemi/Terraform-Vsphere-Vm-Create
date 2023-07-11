# Terraform Project Documentation

## Overview

This document provides an overview of the Terraform project and its configuration files. The project leverages Terraform to manage infrastructure resources in VMware vSphere.

## Files

The following Terraform files are included in this project:

- `version.tf`: Specifies the required providers for the project and their versions.
- `provider.tf`: Configures the vSphere provider and sets the necessary credentials and connection details.
- `data.tf`: Defines data sources to retrieve information about the vSphere datacenter, compute cluster, datastore, resource pool, network, and virtual machine template.
- `variables.tf`: Declares the input variables used in the project, such as authentication details, server information, VM configurations, and resource specifications.
- `main.tf`: Contains the main configuration for creating virtual machines in the vSphere environment.
- `terraform.tfvars`: Provides values for the variables declared in `variables.tf`.

## Configuration Details

### `version.tf`

The `version.tf` file specifies the required provider and its version for the project. It ensures that the correct version of the vSphere provider is used.

### `provider.tf`

The `provider.tf` file configures the vSphere provider with the following settings:

<pre>
provider "vsphere" {
user = var.vsphere_user
password = var.vsphere_password
vsphere_server = var.vsphere_server
allow_unverified_ssl = true
}
</pre>

### `data.tf`

The `data.tf` file defines several data sources to retrieve information about the vSphere environment. These data sources are used to populate the required information for provisioning the virtual machines.

### `variables.tf`

The `variables.tf` file declares the input variables used in the project. These variables allow for customization and dynamic configuration of the infrastructure.

### `main.tf`

The `main.tf` file contains the main configuration for creating virtual machines in the vSphere environment. It utilizes the data sources and variables declared in the previous files to provision the infrastructure.

### `terraform.tfvars`

The `terraform.tfvars` file provides values for the variables declared in `variables.tf`. It includes specific configuration settings such as vSphere credentials, server information, datacenter, datastore, network, cluster, and VM specifications.

## Usage

To use this Terraform project, follow these steps:

1. Install Terraform on your local machine, ensuring you have the correct version.
2. Create a new directory for the project.
3. Copy the Terraform configuration files (`version.tf`, `provider.tf`, `data.tf`, `variables.tf`, `main.tf`, and `terraform.tfvars`) into the project directory.
4. Modify the `terraform.tfvars` file with your specific configuration settings.
5. Open a terminal or command prompt, navigate to the project directory, and run `terraform init` to initialize the project.
6. Run `terraform plan` to see an execution plan and verify the resources that will be created.
7. If the plan looks correct, run `terraform apply` to provision the virtual machines and associated resources.
8. Monitor the Terraform output for any errors or warnings during the provisioning process.
9. After the deployment is complete, you can use the virtual machines as intended.

## Conclusion

This documentation provides an overview of the Terraform project and its configuration files. It outlines the purpose of each file and the important settings to be considered. By following the provided usage instructions, you can effectively deploy and manage virtual machines in your vSphere environment using Terraform.

