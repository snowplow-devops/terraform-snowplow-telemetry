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

output "amazon_linux_2023_user_data" {
  description = "User-data shell chunk for adding telemetry to an Amazon Linux 2023 server"
  value       = local.amazon_linux_2023_user_data
}

output "amazon_linux_2023_user_data_1" {
  description = "User-data shell chunk for adding telemetry to an Amazon Linux 2023 server"
  value       = local.amazon_linux_2023_user_data_1
}

output "amazon_linux_2023_user_data_2" {
  description = "User-data shell chunk for adding telemetry to an Amazon Linux 2023 server"
  value       = local.amazon_linux_2023_user_data_2
}

output "amazon_linux_2023_user_data_3" {
  description = "User-data shell chunk for adding telemetry to an Amazon Linux 2023 server"
  value       = local.amazon_linux_2023_user_data_3
}

output "gcp_ubuntu_20_04_user_data" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 20.04 server"
  value       = local.gcp_ubuntu_20_04_user_data
}

output "gcp_ubuntu_20_04_user_data_1" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 20.04 server"
  value       = local.gcp_ubuntu_20_04_user_data_1
}

output "gcp_ubuntu_20_04_user_data_2" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 20.04 server"
  value       = local.gcp_ubuntu_20_04_user_data_2
}

output "gcp_ubuntu_20_04_user_data_3" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 20.04 server"
  value       = local.gcp_ubuntu_20_04_user_data_3
}

output "azurerm_ubuntu_22_04_user_data" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 22.04 server"
  value       = local.azurerm_ubuntu_22_04_user_data
}

output "azurerm_ubuntu_22_04_user_data_1" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 22.04 server"
  value       = local.azurerm_ubuntu_22_04_user_data_1
}

output "azurerm_ubuntu_22_04_user_data_2" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 22.04 server"
  value       = local.azurerm_ubuntu_22_04_user_data_2
}

output "azurerm_ubuntu_22_04_user_data_3" {
  description = "User-data shell chunk for adding telemetry to an Ubuntu 22.04 server"
  value       = local.azurerm_ubuntu_22_04_user_data_3
}
