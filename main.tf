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
  version      = "1.0.3"
  netbox_url   = var.netbox_url
  netbox_token = var.netbox_token
  asn_number   = var.asn_number 
}

module "optimus_network" {
  source  = "app.terraform.io/optimus_prime/optimus/aws//modules/network"
  version              = "1.0.3"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  sdn_dcgw_subnet_cidr = var.sdn_dcgw_subnet_cidr
  az                   = var.az
  project_name         = var.project_name
}

module "optimus_ipam" {
  source        = "app.terraform.io/optimus_prime/optimus/aws//modules/ipam"
  version       = "1.0.3"
  region        = var.region
  ipam_name     = var.ipam_name
  ipam_cidr     = var.ipam_cidr
  project_name  = var.project_name
}
