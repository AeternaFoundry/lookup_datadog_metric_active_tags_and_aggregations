output "metric_active_tags_and_aggregations_lookup_id" {
  description = "Map of id values across all metric_active_tags_and_aggregations_lookup, keyed the same as var.metric_active_tags_and_aggregations_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_metric_active_tags_and_aggregations.metric_active_tags_and_aggregations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metric_active_tags_and_aggregations_lookup_active_aggregations" {
  description = "Map of active_aggregations values across all metric_active_tags_and_aggregations_lookup, keyed the same as var.metric_active_tags_and_aggregations_lookup except keys with no active_aggregations are omitted"
  value       = { for k, v in data.datadog_metric_active_tags_and_aggregations.metric_active_tags_and_aggregations_lookup : k => v.active_aggregations if v.active_aggregations != null && length(v.active_aggregations) > 0 }
}
output "metric_active_tags_and_aggregations_lookup_active_tags" {
  description = "Map of active_tags values across all metric_active_tags_and_aggregations_lookup, keyed the same as var.metric_active_tags_and_aggregations_lookup except keys with no active_tags are omitted"
  value       = { for k, v in data.datadog_metric_active_tags_and_aggregations.metric_active_tags_and_aggregations_lookup : k => v.active_tags if v.active_tags != null && length(v.active_tags) > 0 }
}
output "metric_active_tags_and_aggregations_lookup_metric" {
  description = "Map of metric values across all metric_active_tags_and_aggregations_lookup, keyed the same as var.metric_active_tags_and_aggregations_lookup except keys with no metric are omitted"
  value       = { for k, v in data.datadog_metric_active_tags_and_aggregations.metric_active_tags_and_aggregations_lookup : k => v.metric if v.metric != null && length(v.metric) > 0 }
}
output "metric_active_tags_and_aggregations_lookup_window" {
  description = "Map of window values across all metric_active_tags_and_aggregations_lookup, keyed the same as var.metric_active_tags_and_aggregations_lookup except keys with no window are omitted"
  value       = { for k, v in data.datadog_metric_active_tags_and_aggregations.metric_active_tags_and_aggregations_lookup : k => v.window if v.window != null }
}

