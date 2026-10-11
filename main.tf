resource "oci_generative_ai_agent_data_ingestion_job" "generative_ai_agent_data_ingestion_jobs" {
  for_each = var.generative_ai_agent_data_ingestion_jobs

  compartment_id = each.value.compartment_id
  data_source_id = each.value.data_source_id
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

