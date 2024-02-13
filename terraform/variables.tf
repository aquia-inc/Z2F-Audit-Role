# Set the AWS Region
variable "aws_region" {
  description = "The AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-1"  # Set your default region here or leave it empty to require explicit assignment
}

# The variable for the Aquia AWS accoutn assuming the Read Only Audit role
variable "aquia_account_id" {
  type = string
  description = "Aquia account to assume the role"
  default = "590183861461"
}