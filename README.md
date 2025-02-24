# terraform-ec2-config
Terraform config to create a EC2 instance that can be used as a bastion host.


# Terraform Bastion Host Deployment

This Terraform configuration deploys a bastion host in AWS.

## Prerequisites

-   An AWS account with appropriate permissions.
-   Terraform CLI installed.
-   AWS CLI configured with your credentials.
-   An existing VPC and public subnet in your AWS account.
-   An existing SSH key pair in your AWS account.

## Files

-   `main.tf`: Contains the Terraform configuration for the bastion host and security group.
-   `terraform.tfvars`: Contains variable values for your specific AWS resources.
-   `output.tf`: Defines output variables to display after deployment.

## Variables

-   `aws_region`: The AWS region to deploy the resources in. (default: `us-east-1`)
-   `vpc_id`: The ID of the existing VPC.
-   `public_subnet_id`: The ID of the existing public subnet.
-   `instance_type`: The EC2 instance type for the bastion host. (default: `t2.micro`)
-   `ami_id`: The AMI ID for the bastion host. (default: Amazon Linux 2 AMI)
-   `key_name`: The name of the SSH key pair.

## Setup

1.  **Clone the repository (if applicable):**
    ```bash
    git clone <your-repository-url>
    cd <your-repository-directory>
    ```

2.  **Configure AWS credentials:**
    Ensure that your AWS CLI is configured with the necessary credentials. You can do this by running `aws configure` and providing your access key ID, secret access key, region, and output format.
    Alternatively, you can configure environment variables:
    ```bash
    export AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY"
    export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_KEY"
    export AWS_REGION="us-east-1"
    ```

3.  **Update `terraform.tfvars`:**
    Replace the placeholder values in `terraform.tfvars` with your actual AWS resource IDs and key pair name.

4.  **Initialize Terraform:**
    ```bash
    terraform init
    ```

5.  **Review the execution plan:**
    ```bash
    terraform plan -var-file="terraform.tfvars"
    ```

6.  **Apply the configuration:**
    ```bash
    terraform apply -var-file="terraform.tfvars"
    ```

7.  **Retrieve the outputs:**
    After the deployment, Terraform will display the output values, including the bastion host's public IP address, instance ID, and security group ID.

## Cleanup

To destroy the deployed resources:

```bash
terraform destroy -var-file="terraform.tfvars"
