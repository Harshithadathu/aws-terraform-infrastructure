Overview

This project provisions a production-style AWS VPC architecture using Terraform.

Architecture Components

Custom VPC (10.0.0.0/16)

Public Subnet

Private Subnet

Internet Gateway

NAT Gateway for outbound internet access

Route Tables

Security Groups

Remote Backend (S3 + DynamoDB)

Key Concepts Implemented

Infrastructure as Code (IaC)

Public/Private subnet isolation

NAT-based secure outbound routing

Bastion host access pattern

Remote state management with locking

Deployment
terraform init
terraform plan
terraform apply
