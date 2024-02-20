# Using CloudFormation Script:

## Prerequisites:

- Access to the AWS Management Console or AWS CLI.
- Necessary permissions to create CloudFormation stacks and IAM roles.

## Obtain the CloudFormation Template:

- Retrieve the CloudFormation template file [`aquia-audit-role.yaml`](https://github.com/aquia-inc/z2f-audit-role/blob/main/cloudformation/aquia-audit-role.yaml) that defines the IAM role.

## Deploy the CloudFormation Stack:

1. Open the AWS Management Console and navigate to the CloudFormation service.
2. Click on "Create stack" and upload the CloudFormation template file.
3. Follow the on-screen instructions, providing values for any required parameters, such as the Aquia Z2F AWS Account ID (provided from Aquia).
4. Review the stack configuration and then click "Create stack".
5. Wait for the stack creation process to complete. Once finished, the IAM role allowing access to Aquia's Z2F AWS account should be provisioned in the customer account.

# Using Terraform Script:

## Prerequisites:

- Terraform installed on your local machine.
- AWS credentials configured with necessary permissions.

## Obtain the Terraform Configuration:

- Change to the [Terraform configuration directory](https://github.com/aquia-inc/z2f-audit-role/tree/main/terraform) containing the Terraform scripts.

## Provide Variable Values:

- Navigate to the Terraform configuration directory and locate the `variables.tf` file.
- Modify the variables to provide values specifically the Aquia Z2F AWS Account ID.

## Initialize Terraform:

1. Open a terminal or command prompt and navigate to the Terraform configuration directory.
2. Run `terraform init` to initialize the Terraform working directory.

## Review Terraform Plan:

- Run `terraform plan` to generate an execution plan. Review the plan to ensure that Terraform will create the desired IAM role with the correct configurations.

## Apply Terraform Configuration:

1. Execute `terraform apply` to apply the Terraform configuration. Terraform will prompt for any required variable values, such as the Aquia Z2F AWS Account ID. (If you have not updated the values.tf file already)
2. Review the proposed changes and confirm by typing `yes`.
3. Terraform will then proceed to provision the IAM role as specified in the configuration.

By following these steps, users can effectively deploy the IAM role using either CloudFormation or Terraform. It ensures that Aquia's Z2F AWS account gains the necessary permissions to assume the role and perform Security Auditor tasks within the customer account.


## Also be sure to update the variables for tagging the role for your company specific tagging policies.