variable "harness_account_id" {
  description = "Your Harness account ID — found in Account Settings → Overview"
  type        = string
}

variable "harness_api_key" {
  description = "Harness API key with pipeline create/edit permissions — store as a secret in IaCM workspace variables"
  type        = string
  sensitive   = true
}

variable "org_id" {
  description = "Harness org identifier where the pipeline will be created"
  type        = string
  default     = "default"
}

variable "project_id" {
  description = "Harness project identifier where the pipeline will be created"
  type        = string
}

variable "pipeline_name" {
  description = "Display name of the pipeline to provision"
  type        = string
  default     = "Provisioned by IaCM"
}

variable "pipeline_identifier" {
  description = "Unique identifier for the pipeline — no spaces or hyphens"
  type        = string
  default     = "provisioned_by_iacm"
}
