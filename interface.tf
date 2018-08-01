variable "name" {
  description = "The name of the VPC."
}

variable "cidr" {
  description = "The cidr of the vpc."
}

variable "public_subnet" {
  description = "the public subnet to create"
}

variable "enable_dns_hostnames" {
  description = "Should be true if you want to use private dns within the VPC."
  default = true
}

variable "enable_dns_support" {
  description = "Should be true if you want to use private dns within the VPC."
  default = true
}