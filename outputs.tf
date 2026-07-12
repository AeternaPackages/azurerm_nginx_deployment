# --- azurerm_nginx_deployment ---
output "nginx_deployments_auto_scale_profile" {
  description = "Map of auto_scale_profile values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_auto_scale_profile
}

output "nginx_deployments_automatic_upgrade_channel" {
  description = "Map of automatic_upgrade_channel values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_automatic_upgrade_channel
}

output "nginx_deployments_capacity" {
  description = "Map of capacity values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_capacity
}

output "nginx_deployments_dataplane_api_endpoint" {
  description = "Map of dataplane_api_endpoint values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_dataplane_api_endpoint
}

output "nginx_deployments_diagnose_support_enabled" {
  description = "Map of diagnose_support_enabled values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_diagnose_support_enabled
}

output "nginx_deployments_email" {
  description = "Map of email values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_email
}

output "nginx_deployments_frontend_private" {
  description = "Map of frontend_private values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_frontend_private
}

output "nginx_deployments_frontend_public" {
  description = "Map of frontend_public values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_frontend_public
}

output "nginx_deployments_identity" {
  description = "Map of identity values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_identity
}

output "nginx_deployments_ip_address" {
  description = "Map of ip_address values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_ip_address
}

output "nginx_deployments_location" {
  description = "Map of location values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_location
}

output "nginx_deployments_logging_storage_account" {
  description = "Map of logging_storage_account values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_logging_storage_account
}

output "nginx_deployments_managed_resource_group" {
  description = "Map of managed_resource_group values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_managed_resource_group
}

output "nginx_deployments_name" {
  description = "Map of name values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_name
}

output "nginx_deployments_network_interface" {
  description = "Map of network_interface values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_network_interface
}

output "nginx_deployments_nginx_version" {
  description = "Map of nginx_version values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_nginx_version
}

output "nginx_deployments_resource_group_name" {
  description = "Map of resource_group_name values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_resource_group_name
}

output "nginx_deployments_sku" {
  description = "Map of sku values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_sku
}

output "nginx_deployments_tags" {
  description = "Map of tags values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_tags
}

output "nginx_deployments_web_application_firewall" {
  description = "Map of web_application_firewall values across all nginx_deployments, keyed the same as var.nginx_deployments"
  value       = module.nginx_deployments.nginx_deployments_web_application_firewall
}

# --- azurerm_nginx_api_key ---
output "nginx_api_keys_end_date_time" {
  description = "Map of end_date_time values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = module.nginx_api_keys.nginx_api_keys_end_date_time
}

output "nginx_api_keys_hint" {
  description = "Map of hint values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = module.nginx_api_keys.nginx_api_keys_hint
}

output "nginx_api_keys_name" {
  description = "Map of name values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = module.nginx_api_keys.nginx_api_keys_name
}

output "nginx_api_keys_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = module.nginx_api_keys.nginx_api_keys_nginx_deployment_id
}

output "nginx_api_keys_secret_text" {
  description = "Map of secret_text values across all nginx_api_keys, keyed the same as var.nginx_api_keys"
  value       = module.nginx_api_keys.nginx_api_keys_secret_text
  sensitive   = true
}

# --- azurerm_nginx_certificate ---
output "nginx_certificates_certificate_virtual_path" {
  description = "Map of certificate_virtual_path values across all nginx_certificates, keyed the same as var.nginx_certificates"
  value       = module.nginx_certificates.nginx_certificates_certificate_virtual_path
}

output "nginx_certificates_key_vault_secret_id" {
  description = "Map of key_vault_secret_id values across all nginx_certificates, keyed the same as var.nginx_certificates"
  value       = module.nginx_certificates.nginx_certificates_key_vault_secret_id
}

output "nginx_certificates_key_virtual_path" {
  description = "Map of key_virtual_path values across all nginx_certificates, keyed the same as var.nginx_certificates"
  value       = module.nginx_certificates.nginx_certificates_key_virtual_path
}

output "nginx_certificates_name" {
  description = "Map of name values across all nginx_certificates, keyed the same as var.nginx_certificates"
  value       = module.nginx_certificates.nginx_certificates_name
}

output "nginx_certificates_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_certificates, keyed the same as var.nginx_certificates"
  value       = module.nginx_certificates.nginx_certificates_nginx_deployment_id
}

# --- azurerm_nginx_configuration ---
output "nginx_configurations_config_file" {
  description = "Map of config_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = module.nginx_configurations.nginx_configurations_config_file
}

output "nginx_configurations_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = module.nginx_configurations.nginx_configurations_nginx_deployment_id
}

output "nginx_configurations_package_data" {
  description = "Map of package_data values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = module.nginx_configurations.nginx_configurations_package_data
}

output "nginx_configurations_protected_file" {
  description = "Map of protected_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = module.nginx_configurations.nginx_configurations_protected_file
  sensitive   = true
}

output "nginx_configurations_root_file" {
  description = "Map of root_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = module.nginx_configurations.nginx_configurations_root_file
}


