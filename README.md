<div align="center">

<img src="https://octodex.github.com/images/neurocats_FULL.png" height="300px" />

</div>

# Terraform EC2 Instance Project

## 📌 Overview
This project provisions AWS EC2 instances using Terraform.  
It demonstrates Infrastructure as Code (IaC) best practices with modular design.

## 🛠 Terraform EC2 Module – Requirements
- Terraform >= 1.5.0
- AWS CLI configured with valid credentials
- Git installed

## Project Requirements

| Parameter | Value | Description |
|------------|--------|-------------|
| **AMI ID** | `ami-01a00762f46d584a1` | Ubuntu Server 26.04 LTS (HVM), SSD Volume Type, 64-bit |
| **Instance Name** | `${var.env}-app-server` | Auto-tagged per environment (Dev, Prod, Test) |
| **Instance Type** | `t3.micro` | Free Tier eligible |
| **Region** | `ap-south-1` | AWS Mumbai region |
| **Storage Root Volume** | `8 GB` | Default root volume only |
| **Storage Type** | `gp3` | SSD-backed |
| **File Systems** | None | No extra EBS volumes defined |
| **Security Groups** | Existing SG required | Either **Default SG** (`group-name = "default"`) or **Custom SG ID** (`sg-xxxx`) |

---

## 🚀 **Usage**

| Parameter |  Description |
|------------|-------------|
| **Initialize Terraform** | # _terraform init_ |
| **Validate configuration** | # _terraform validate_ |
| **Plan deployment** | # _terraform plan -var-file=dev/terraform.tfvars_ |
| **Apply changes** | # _terraform apply -var-file=dev/terraform.tfvars_ |

---

## 📂 Project Structure
```bash
terraform-project/
├── provider.tf
├── modules/
│   └── ec2_instance/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── dev/
│   └── main.tf
├── prod/
│   └── main.tf
└── test/
    └── main.tf

---

