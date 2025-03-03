variable "create_iam_role" {
  description = "Automaticly create IAM role"
  type        = bool
  default     = true
}

variable "irsa_role_name" {
  description = "Automatically create IAM role"
  type        = string
  default     = null
}

variable "helm_config" {
  description = "External DNS Helm Configuration"
  type        = any
  default     = {}
}

variable "manage_via_gitops" {
  description = "Determines if the add-on should be managed via GitOps."
  type        = bool
  default     = false
}

variable "irsa_policies" {
  description = "Additional IAM policies used for the add-on service account."
  type        = list(string)
}

variable "domain_name" {
  description = "Domain name of the Route53 hosted zone to use with External DNS."
  type        = string
}

variable "addon_context" {
  description = "Input configuration for the addon"
  type = object({
    aws_caller_identity_account_id = string
    aws_caller_identity_arn        = string
    aws_eks_cluster_endpoint       = string
    aws_partition_id               = string
    aws_region_name                = string
    eks_cluster_id                 = string
    eks_oidc_issuer_url            = string
    eks_oidc_provider_arn          = string
    tags                           = map(string)
    irsa_iam_role_path             = string
    irsa_iam_permissions_boundary  = string
  })
}
