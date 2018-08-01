# AWS VPC module for Terraform

A lightweight VPC module for Terraform.

## Usage

module "vpc" {
    source          = "github.com/talibidris/tf_vpc"
    name            = "vpc_name"
    cidr            = "10.0.0.0/16"
    public_subnet   = "10.0.1.0/24"
}

see 'interface.tf' for additional configurable variables

## License

MIT