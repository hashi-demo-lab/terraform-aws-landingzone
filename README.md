# Terraform Private Module for AWS Base Infrastructure Services


![AWS Logo](<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Amazon_Web_Services_Logo.svg/1200px-Amazon_Web_Services_Logo.svg.png" alt="AWS Logo" width="200"/>)


<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Amazon_Web_Services_Logo.svg/1200px-Amazon_Web_Services_Logo.svg.png" alt="AWS Logo" width="200"/>
</p>

This Terraform private module provides a set of reusable Terraform modules that can be used to create foundational infrastructure services on AWS. The modules are designed to be modular, easy to use, and extensible. They allow you to easily create VPCs, security groups, transit gateways, and KMS keys, with the ability to enable or disable the creation of each resource using a `count` variable.


## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Variables](#variables)
- [Outputs](#outputs)
- [Contributing](#contributing)

## Prerequisites

Before you can use this module, you must have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html) (>=0.13.0)
- [AWS CLI](https://aws.amazon.com/cli/)

You must also have an AWS account and valid AWS credentials configured in your environment.

## Usage

To use this module, you need to define the module source and input variables in your Terraform code. You can reference this module by adding the following code to your Terraform configuration:


```
module "aws_infra_services" {
source = "git@github.com:<ORG>/<REPO>/terraform-aws-infra-services.git"

create_vpc = true
create_security_group = true
create_transit_gateway = true
create_kms_key = true

// Specify any additional module input variables here
}
```


In the example above, we are creating all the base infrastructure services, but you can disable any of the resources you do not need by setting the corresponding input variable to `false`.

## Variables

This module exposes several input variables that can be used to configure the AWS infrastructure resources created by this module. Some of the important variables are:

- create_vpc: Whether to create a VPC or not (default: true)
- create_security_group: Whether to create a security group or not (default: true)
- create_transit_gateway: Whether to create a transit gateway or not (default: true)
- create_kms_key: Whether to create a KMS key or not (default: true)

You can customize the behavior of this module by setting these variables to true or false as needed. You can also set other variables to configure the resources created by this module.

## Outputs

This module exposes several output variables that can be used to reference the resources created by this module. Some of the important output variables are:

vpc_id: The ID of the VPC created by this module
security_group_id: The ID of the security group created by this module
transit_gateway_id: The ID of the transit gateway created by this module
kms_key_id: The ID of the KMS key created by this module
You can use these output variables to reference the resources created by this module in other parts of your Terraform code.

## Contributing

If you find a bug or have a feature request, please open an issue or submit a pull request. We welcome contributions from the community!