provider "aws" {
  region = "us-east-1"  # Change to the appropriate region
}

# Create the IAM role
resource "aws_iam_role" "readonly_audit_role" {
  name = "ReadOnlyAuditRole"
  
  assume_role_policy = jsonencode({
    Version: "2012-10-17",
    Statement: [
      {
        Effect: "Allow",
        Principal: {
          Federated: "arn:aws:iam::${var.aquia_account_id}:saml-provider/AWSSSO_6ca0ec7ff66cba2c_DO_NOT_DELETE"
        },
        Action: [
          "sts:AssumeRoleWithSAML",
          "sts:TagSession"
        ],
        Condition: {
          StringEquals: {
            "SAML:aud": "https://signin.aws.amazon.com/saml"
          }
        }
      }
    ]
  })

  tags = {
    tag-key = "tag-value" # Modify tag-key and tag-value as appropriate
  }
}

# Attach the security audit policy to the role
resource "aws_iam_policy_attachment" "security_audit_attachment" {
  name       = "SecurityAuditAttachment"
  policy_arn = "arn:aws:iam::aws:policy/SecurityAudit"
  roles      = [aws_iam_role.readonly_audit_role.name]
}
