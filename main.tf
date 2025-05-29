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

module "demo_netbox" {
  source  = "app.terraform.io/optimus_prime/demo/aws//modules/netbox"
  version = "1.0.0"

  netbox_url   = var.netbox_url
  netbox_token = var.netbox_token
  prefix       = var.netbox_prefix  
}