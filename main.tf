data "elasticstack_elasticsearch_ingest_processor_pipeline" "elasticsearch_ingest_processor_pipeline_lookup" {
  for_each = var.elasticsearch_ingest_processor_pipeline_lookup

  name           = each.value.name
  description    = each.value.description
  if             = each.value.if
  ignore_failure = each.value.ignore_failure
  on_failure     = each.value.on_failure
  tag            = each.value.tag
}

