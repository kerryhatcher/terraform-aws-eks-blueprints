output "irsa_iam_role_arn" {
  description = "IAM role ARN for your service account"
  value       = var.irsa_iam_policies != null ? data.aws_iam_role.irsa_role.name : null
}

output "irsa_iam_role_name" {
  description = "IAM role name for your service account"
  value       = var.irsa_iam_policies != null ? data.aws_iam_role.irsa_role.name : null
}
