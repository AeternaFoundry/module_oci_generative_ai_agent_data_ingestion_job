variable "generative_ai_agent_data_ingestion_jobs" {
  description = <<EOT
Map of generative_ai_agent_data_ingestion_jobs, attributes below
Required:
    - compartment_id
    - data_source_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    data_source_id = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

