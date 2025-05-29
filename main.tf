provider "aws" {
  region = "eu-north-1"
}

terraform {
  cloud {
    organization = "optimus_prime"

    workspaces {
      name = "demo_optimus"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.98.0"
    }
  }
}

module "optimus_netbox" {
  source  = "app.terraform.io/optimus_prime/optimus/aws//modules/netbox"
  version = "1.0.0"
  # insert required variables here
  netbox_url   = var.netbox_url
  netbox_token = var.netbox_token
  asn_number   = var.asn_number 
}

