terraform {
  required_providers {
    harness = {
      source  = "harness/harness"
      version = "~> 0.30"
    }
  }
}


provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = var.harness_account_id
  platform_api_key = var.harness_api_key
}

resource "harness_platform_pipeline" "demo_pipeline" {
  identifier = var.pipeline_identifier
  name       = var.pipeline_name
  org_id     = var.org_id
  project_id = var.project_id

  yaml = <<-EOT
    pipeline:
      name: ${var.pipeline_name}
      identifier: ${var.pipeline_identifier}
      orgIdentifier: ${var.org_id}
      projectIdentifier: ${var.project_id}
      tags: {}
      stages:
        - stage:
            name: Hello Stage
            identifier: hello_stage
            type: Custom
            spec:
              execution:
                steps:
                  - step:
                      type: ShellScript
                      name: Hello from IaCM
                      identifier: hello_from_iacm
                      spec:
                        shell: Bash
                        onDelegate: true
                        source:
                          type: Inline
                          spec:
                            script: echo "This pipeline was provisioned by Harness IaCM using Terraform!"
                        environmentVariables: []
                        outputVariables: []
                      timeout: 10m
            tags: {}
  EOT
}
