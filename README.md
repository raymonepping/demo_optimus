# demo_optimus

Main Terraform configuration for demos and PoCs, using reusable modules from [`terraform-AWS-optimus`](https://github.com/raymonepping/terraform-AWS-optimus).

---

## Overview

This repository contains the primary Terraform code to deploy and manage demo infrastructure. All core AWS modules (VPC, IPAM, NetBox integration, etc.) are referenced as remote modules from [`terraform-AWS-optimus`](https://github.com/raymonepping/terraform-AWS-optimus).

---

## Structure

- `main.tf` – Root configuration, module sources, backend, and providers
- `variables.tf` – Input variable definitions
- `outputs.tf` – Key deployment outputs

---

## Usage

1. **Clone this repository:**
   ```bash
   git clone https://github.com/raymonepping/demo_optimus.git
   cd demo_optimus
