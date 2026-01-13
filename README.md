# AWS EC2 Apache Deployment with Terraform

## Overview
This project demonstrates provisioning an AWS EC2 instance using **Terraform (Infrastructure as Code)** and automatically installing and running an **Apache HTTP web server** on **Amazon Linux 2023**.  
The infrastructure is secure, reproducible, and fully automated.

---

## Purpose
The purpose of this project is to demonstrate hands-on experience with **Infrastructure as Code** by provisioning a secure and reproducible AWS EC2 environment using Terraform.  
It focuses on applying cloud fundamentals, security best practices, and automation to deploy a production-ready web server.

---

## Architecture
- AWS EC2 (Amazon Linux 2023)
- Security Group
  - SSH (port 22) restricted to my public IP
  - HTTP (port 80) open to the internet
- Apache HTTP Server
- Terraform (Infrastructure as Code)

---

## Terraform Resources
- `aws_instance` – EC2 instance
- `aws_security_group` – Network security rules
- `aws_ami` (data source) – Latest Amazon Linux 2023 AMI
- `aws_vpc` (data source) – Default VPC
- `aws_subnets` (data source) – Default subnets

---

## How It Works
1. Terraform initializes the AWS provider
2. Retrieves the latest Amazon Linux 2023 AMI
3. Creates a security group with secure ingress rules
4. Launches an EC2 instance
5. Installs and starts Apache using `user_data`
6. Outputs the public IP and public URL

---

## Inputs
```hcl
aws_region = "eu-north-1"
my_ip_cidr = "YOUR_PUBLIC_IP/32"
key_name   = "YOUR_EXISTING_EC2_KEYPAIR"

## Screenshot
Deployed Apache Website on EC2
<img width="537" height="284" alt="Apache running on EC2 (Terraform deployment)" src="https://github.com/user-attachments/assets/ba83937d-025c-470b-b7f3-efed43a0e0de" /> ```

