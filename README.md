# AWS EC2 Apache Deployment with Terraform

## Overview
This project provisions an AWS EC2 instance using **Terraform (Infrastructure as Code)** and automatically installs and starts **Apache HTTP Server** using EC2 **user_data**.  
After deployment, the website is accessible via the instance public IP address.

---

## Architecture
- AWS EC2 (t3.micro)
- Amazon Linux 2023
- Default VPC + Subnet
- Security Group:
  - SSH (22) restricted to my public IP
  - HTTP (80) open to the internet
- Apache installed and started automatically via user_data

---

## Terraform Files
- `main.tf` — provider, data sources, security group, EC2 instance
- `variables.tf` — variables
- `outputs.tf` — public IP + URL outputs

> `terraform.tfvars` is intentionally excluded from GitHub.

---

## Prerequisites
- AWS account + IAM user
- AWS CLI configured (`aws configure`)
- Terraform installed
- Existing EC2 Key Pair

---

## Configuration (local only)
Create a file named `terraform.tfvars`:

```hcl
aws_region = "eu-north-1"
my_ip_cidr = "80.86.37.189/32"
key_name   = "devops-lab-key"

