data "datadog_metric_active_tags_and_aggregations" "metric_active_tags_and_aggregations_lookup" {
  for_each = var.metric_active_tags_and_aggregations_lookup

  metric = each.value.metric
  window = each.value.window
}

