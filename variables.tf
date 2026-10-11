variable "metric_active_tags_and_aggregations_lookup" {
  description = <<EOT
Map of metric_active_tags_and_aggregations_lookup, attributes below
Required:
    - metric
Optional:
    - window
EOT

  type = map(object({
    metric = string
    window = optional(number)
  }))
}

