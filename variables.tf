variable "netbox_url" {
  description = "NetBox server URL"
  type        = string
}

variable "netbox_token" {
  description = "NetBox API token"
  type        = string
  sensitive   = true
}

variable "netbox_prefix" {
  description = "Prefix CIDR to allocate IP from"
  type        = string
}

variable "asn_number" {
  description = "ASN to fetch (optional, for PoC)"
  type        = number
  default     = null
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "sdn_dcgw_subnet_cidr" {
  description = "CIDR block for the SDN-DCGW interconnect subnet"
  type        = string
}

variable "az" {
  description = "Availability Zone for subnets"
  type        = string
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
}
