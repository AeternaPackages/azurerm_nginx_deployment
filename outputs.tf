# --- azurerm_nginx_deployment ---
output "nginx_deployments" {
  description = "All nginx_deployment resources"
  value       = module.nginx_deployments.nginx_deployments
}
output "nginx_deployments_auto_scale_profile" {
  description = "List of auto_scale_profile values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.auto_scale_profile]
}
output "nginx_deployments_automatic_upgrade_channel" {
  description = "List of automatic_upgrade_channel values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.automatic_upgrade_channel]
}
output "nginx_deployments_capacity" {
  description = "List of capacity values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.capacity]
}
output "nginx_deployments_dataplane_api_endpoint" {
  description = "List of dataplane_api_endpoint values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.dataplane_api_endpoint]
}
output "nginx_deployments_diagnose_support_enabled" {
  description = "List of diagnose_support_enabled values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.diagnose_support_enabled]
}
output "nginx_deployments_email" {
  description = "List of email values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.email]
}
output "nginx_deployments_frontend_private" {
  description = "List of frontend_private values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.frontend_private]
}
output "nginx_deployments_frontend_public" {
  description = "List of frontend_public values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.frontend_public]
}
output "nginx_deployments_identity" {
  description = "List of identity values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.identity]
}
output "nginx_deployments_ip_address" {
  description = "List of ip_address values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.ip_address]
}
output "nginx_deployments_location" {
  description = "List of location values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.location]
}
output "nginx_deployments_logging_storage_account" {
  description = "List of logging_storage_account values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.logging_storage_account]
}
output "nginx_deployments_managed_resource_group" {
  description = "List of managed_resource_group values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.managed_resource_group]
}
output "nginx_deployments_name" {
  description = "List of name values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.name]
}
output "nginx_deployments_network_interface" {
  description = "List of network_interface values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.network_interface]
}
output "nginx_deployments_nginx_version" {
  description = "List of nginx_version values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.nginx_version]
}
output "nginx_deployments_resource_group_name" {
  description = "List of resource_group_name values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.resource_group_name]
}
output "nginx_deployments_sku" {
  description = "List of sku values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.sku]
}
output "nginx_deployments_tags" {
  description = "List of tags values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.tags]
}
output "nginx_deployments_web_application_firewall" {
  description = "List of web_application_firewall values across all nginx_deployments"
  value       = [for k, v in module.nginx_deployments.nginx_deployments : v.web_application_firewall]
}


# --- azurerm_nginx_api_key ---
output "nginx_api_keys" {
  description = "All nginx_api_key resources"
  value       = module.nginx_api_keys.nginx_api_keys
  sensitive   = true
}
output "nginx_api_keys_end_date_time" {
  description = "List of end_date_time values across all nginx_api_keys"
  value       = [for k, v in module.nginx_api_keys.nginx_api_keys : v.end_date_time]
}
output "nginx_api_keys_hint" {
  description = "List of hint values across all nginx_api_keys"
  value       = [for k, v in module.nginx_api_keys.nginx_api_keys : v.hint]
}
output "nginx_api_keys_name" {
  description = "List of name values across all nginx_api_keys"
  value       = [for k, v in module.nginx_api_keys.nginx_api_keys : v.name]
}
output "nginx_api_keys_nginx_deployment_id" {
  description = "List of nginx_deployment_id values across all nginx_api_keys"
  value       = [for k, v in module.nginx_api_keys.nginx_api_keys : v.nginx_deployment_id]
}
output "nginx_api_keys_secret_text" {
  description = "List of secret_text values across all nginx_api_keys"
  value       = [for k, v in module.nginx_api_keys.nginx_api_keys : v.secret_text]
  sensitive   = true
}


# --- azurerm_nginx_certificate ---
output "nginx_certificates" {
  description = "All nginx_certificate resources"
  value       = module.nginx_certificates.nginx_certificates
}
output "nginx_certificates_certificate_virtual_path" {
  description = "List of certificate_virtual_path values across all nginx_certificates"
  value       = [for k, v in module.nginx_certificates.nginx_certificates : v.certificate_virtual_path]
}
output "nginx_certificates_key_vault_secret_id" {
  description = "List of key_vault_secret_id values across all nginx_certificates"
  value       = [for k, v in module.nginx_certificates.nginx_certificates : v.key_vault_secret_id]
}
output "nginx_certificates_key_virtual_path" {
  description = "List of key_virtual_path values across all nginx_certificates"
  value       = [for k, v in module.nginx_certificates.nginx_certificates : v.key_virtual_path]
}
output "nginx_certificates_name" {
  description = "List of name values across all nginx_certificates"
  value       = [for k, v in module.nginx_certificates.nginx_certificates : v.name]
}
output "nginx_certificates_nginx_deployment_id" {
  description = "List of nginx_deployment_id values across all nginx_certificates"
  value       = [for k, v in module.nginx_certificates.nginx_certificates : v.nginx_deployment_id]
}


# --- azurerm_nginx_configuration ---
output "nginx_configurations" {
  description = "All nginx_configuration resources"
  value       = module.nginx_configurations.nginx_configurations
  sensitive   = true
}
output "nginx_configurations_config_file" {
  description = "List of config_file values across all nginx_configurations"
  value       = [for k, v in module.nginx_configurations.nginx_configurations : v.config_file]
}
output "nginx_configurations_nginx_deployment_id" {
  description = "List of nginx_deployment_id values across all nginx_configurations"
  value       = [for k, v in module.nginx_configurations.nginx_configurations : v.nginx_deployment_id]
}
output "nginx_configurations_package_data" {
  description = "List of package_data values across all nginx_configurations"
  value       = [for k, v in module.nginx_configurations.nginx_configurations : v.package_data]
}
output "nginx_configurations_protected_file" {
  description = "List of protected_file values across all nginx_configurations"
  value       = [for k, v in module.nginx_configurations.nginx_configurations : v.protected_file]
  sensitive   = true
}
output "nginx_configurations_root_file" {
  description = "List of root_file values across all nginx_configurations"
  value       = [for k, v in module.nginx_configurations.nginx_configurations : v.root_file]
}



