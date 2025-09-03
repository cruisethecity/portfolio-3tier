# AWS 3-Tier Architecture with Terraform

This project demonstrates practicing beginner-level skills by deploying a secure, scalable 3-tier architecture on AWS using Terraform.  
It includes Networking (VPC, Subnets), Compute (EC2), and Database (RDS) resources — all deployed as Infrastructure-as-Code.

---

## Project Overview

| Layer   | Services Used                          | Purpose                                    |
|---------|---------------------------------------|--------------------------------------------|
| Network | VPC, Public & Private Subnets, IGW, NAT | Provides secure and isolated networking   |
| Compute | EC2, Security Groups, Load Balancer    | Hosts the web tier or application        |
| Database| Amazon RDS (MySQL/Postgres)            | Stores application data in a private subnet |

---

## Project Structure

portfolio-3tier/
├── main.tf
├── provider.tf
├── terraform.tfstate # DO NOT COMMIT THIS FILE
├── modules/
│ ├── network/
│ ├── compute/
│ └── database/

---

## Screenshots

### Terraform Apply
![Terraform Apply](./screenshots/terraform-apply.png)

### AWS Subnets
![AWS Subnets](./screenshots/aws-subnets.png)

### No Changes (Terraform Plan)
![No Changes](./screenshots/no-changes.png)

---

## Deployment Steps

Run the following commands in order to deploy, validate, and destroy the infrastructure:

```bash
terraform init
terraform validate
terraform plan
terraform apply -auto-approve
terraform state list
terraform show
terraform destroy -auto-approve
Key Learnings
Practicing Infrastructure-as-Code (IaC) using Terraform.

Understanding modular design for network, compute, and database layers.

Tracking infrastructure changes in version control (Git).

Implementing cloud best practices such as public/private subnets and least-privilege security groups.

Clean Up
bash
Copy code
terraform destroy -auto-approve
Tags
#AWS #Terraform #DevOps #CloudComputing #3TierArchitecture
