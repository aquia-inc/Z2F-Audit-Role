output "role_arn" {
  value = aws_iam_role.readonly_audit_role.arn
}

output "role_name" {
  value = aws_iam_role.readonly_audit_role.name
}