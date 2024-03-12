# Terraform Multi-Region Deployment


This project demonstrates how to deploy a solution consisting of an EC2 instance, S3 bucket, and DynamoDB table in multiple regions using Terraform. The solution is designed to ensure consistency and scalability across regions.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Deployment Steps](#deployment-steps)
- [Folder Structure](#folder-structure)
- [Running the Project](#running-the-project)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project aims to deploy a scalable infrastructure solution across multiple regions using Terraform. It leverages Terraform modules to abstract common configurations and ensure consistency between deployments.

## Features

- Automated deployment of infrastructure resources using Terraform.
- Utilization of Terraform modules for modular and reusable configurations.
- Support for deploying resources in multiple AWS regions simultaneously.
- Implementation of best practices for managing state files and applying locking mechanisms.

## Prerequisites

Before deploying the infrastructure, ensure you have the following prerequisites set up:
- AWS CLI configured with appropriate permissions.
- Terraform installed on your local machine.

## Deployment Steps

1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/aanan27/Terraform-project_multi-region-.git
    # Clone the Repository
git clone https://github.com/aanan27/Terraform-project_multi-region-.git
cd Terraform-project_multi-region-

project1/
│
├── main.tf
├── variables.tf
├── backend.tf
└── providers.tf

project2/
│
├── main.tf
├── variables.tf
├── backend.tf
└── providers.tf

modules/
│
├── network/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── subnets.tf
│
├── dynamodb/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── tables.tf
│
└── ec2/
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    └── instances.tf

vpcendpoint/
│
├── main.tf
├── variables.tf
└── outputs.tf

# Initialize Terraform
terraform init

# Plan Infrastructure for Project 1
terraform plan -var-file=project1/variables.tfvars -out=project1.tfplan

# Plan Infrastructure for Project 2
terraform plan -var-file=project2/variables.tfvars -out=project2.tfplan

# Apply Infrastructure Changes for Project 1
terraform apply "project1.tfplan"

# Apply Infrastructure Changes for Project 2
terraform apply "project2.tfplan"

This set of commands performs the following actions:

Clones the repository.
Navigates to the project directory.
Initializes Terraform.
Plans the infrastructure for both Project 1 and Project 2, generating separate plan files.
Applies the infrastructure changes for Project 1 using the generated plan file.
Applies the infrastructure changes for Project 2 using the generated plan file.
