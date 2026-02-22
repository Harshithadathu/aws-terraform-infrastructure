
                Internet
                    |
              Internet Gateway
                    |
           ----------------------
           |                    |
      Public Subnet        Private Subnet
           |                    |
     Bastion Host           Application EC2
           |                    |
        NAT Gateway -------------
                    |
                 Outbound

# A production-style AWS networking architecture using Terraform.

It implements secure public and private subnet isolation with controlled outbound internet access using a NAT Gateway, following cloud security best practices.

## The architecture ensures:

Private workloads are not directly exposed to the internet

Outbound internet access is securely enabled

Infrastructure is fully reproducible via Infrastructure-as-Code (IaC)

Remote state management prevents deployment conflicts

To enable secure outbound access:

A NAT Gateway is deployed in the public subnet

Private subnet route table forwards 0.0.0.0/0 traffic to NAT

NAT performs Source Network Address Translation (SNAT)

Outbound traffic is allowed

Inbound traffic remains blocked

## Infrastructure Components

Custom VPC (10.0.0.0/16)

Public Subnet (10.0.1.0/24)

Private Subnet (10.0.2.0/24)

Internet Gateway

NAT Gateway (Elastic IP)

Route Tables (Public & Private)

Security Groups

Remote Backend (S3 + DynamoDB for state locking)

## Security Considerations

Public subnet hosts only internet-facing components

Private subnet isolates application workloads

NAT Gateway enables outbound-only traffic

No public IP assigned to private EC2

Bastion access pattern used for controlled SSH

Terraform state stored remotely to avoid drift and conflicts

No credentials or secrets committed to repository



