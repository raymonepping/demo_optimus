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
