variable "region" {
  type    = string
  default = "us-east-1"
}

variable "create_oidc_provider" {
  type        = bool
  default     = true
  description = "Create GitHub's OIDC provider. AWS allows one per account: set false if another project already created it."
}

variable "github_repo_sub" {
  type    = string
}

variable "state_bucket" {
  type    = string
  default = "tfstate-223455088174-us-east-1"
}

variable "cluster_name" {
  type    = string
  default = "robot-shop" # must match cluster_name in infra/eks
}

variable "name_suffix" {
  type        = string
  description = "Appended to IAM role names so projects sharing an AWS account don't collide"
  default     = ""
}