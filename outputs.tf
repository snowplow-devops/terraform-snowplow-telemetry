output "id" {
  description = "The id of the tracking resource"
  value       = snowplow_track_self_describing_event.telemetry.id
}

output "auto_generated_id" {
  description = "The Snowplow OSS auto-generated ID for stitching together entities of the module being tracked"
  value       = local.auto_generated_id
}

output "collector_uri" {
  description = "The Snowplow OSS Collector URI to use in collection of telemetry details"
  value       = local.collector_uri
}

output "amazon_linux_2_user_data" {
  description = "User-data shell chunk for adding telemetry to an Amazon Linux 2 server"
  value       = local.amazon_linux_2_user_data
}
