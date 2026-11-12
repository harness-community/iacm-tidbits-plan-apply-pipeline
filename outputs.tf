output "pipeline_id" {
  description = "Identifier of the provisioned pipeline"
  value       = harness_platform_pipeline.demo_pipeline.identifier
}

output "pipeline_name" {
  description = "Display name of the provisioned pipeline"
  value       = harness_platform_pipeline.demo_pipeline.name
}

output "pipeline_url" {
  description = "Direct URL to the provisioned pipeline in Harness"
  value       = "https://app.harness.io/ng/account/${var.harness_account_id}/org/${var.org_id}/projects/${var.project_id}/pipelines/${var.pipeline_identifier}"
}
