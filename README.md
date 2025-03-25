# Rentzone Infrastructure ECS Project

## Overview
This project sets up a robust and scalable infrastructure for the Rentzone application using Amazon Elastic Container Service (ECS) and other AWS services. The infrastructure is designed to provide a reliable and efficient deployment environment for the Rentzone application.

## Architecture
The infrastructure is built using:
- Amazon ECS for container orchestration
- AWS Fargate for serverless container deployment
- Amazon VPC for network isolation
- Application Load Balancer for traffic distribution
- Amazon RDS for database management
- Amazon ECR for container image storage

## Prerequisites
- AWS Account
- Terraform installed
- AWS CLI configured
- Docker (for local container builds)

## Project Structure
```
rentzone-infrastructure-ecs/
│
├── terraform/
│   ├── main.tf           # Primary Terraform configuration
│   ├── variables.tf      # Input variables
│   ├── outputs.tf        # Output values
│   └── modules/          # Reusable Terraform modules
│
├── docker/               # Dockerfile and related container configurations
│
├── scripts/              # Deployment and utility scripts
│
└── README.md             # Project documentation
```

## Setup and Deployment

### 1. Clone the Repository
```bash
git clone https://github.com/Alexander77063/rentzone-infrastructure-ecs.git
cd rentzone-infrastructure-ecs
```

### 2. Configure AWS Credentials
Ensure your AWS CLI is configured with the necessary permissions:
```bash
aws configure
```

### 3. Initialize Terraform
```bash
cd terraform
terraform init
```

### 4. Plan Infrastructure
```bash
terraform plan
```

### 5. Apply Infrastructure
```bash
terraform apply
```

## Key Components
- **ECS Cluster**: Manages containerized application deployment
- **Fargate**: Provides serverless compute for containers
- **VPC**: Configures network infrastructure
- **Security Groups**: Manages network access controls
- **Load Balancer**: Distributes incoming traffic
- **RDS Database**: Manages application data storage

## Environment Variables
Ensure the following environment variables are set:
- `DB_HOST`
- `DB_USER`
- `DB_PASSWORD`
- `APP_PORT`

## Monitoring and Logging
- CloudWatch logs are configured for ECS tasks
- CloudWatch alarms can be set up for performance monitoring

## Security Considerations
- Use AWS IAM roles with least privilege
- Enable encryption for data at rest and in transit
- Regularly update and patch containers

## Cleanup
To destroy the infrastructure:
```bash
terraform destroy
