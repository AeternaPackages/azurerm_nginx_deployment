locals {
  nginx_deployments = { for k1, v1 in var.nginx_deployments : k1 => { auto_scale_profile = v1.auto_scale_profile, automatic_upgrade_channel = v1.automatic_upgrade_channel, capacity = v1.capacity, diagnose_support_enabled = v1.diagnose_support_enabled, email = v1.email, frontend_private = v1.frontend_private, frontend_public = v1.frontend_public, identity = v1.identity, location = v1.location, logging_storage_account = v1.logging_storage_account, managed_resource_group = v1.managed_resource_group, name = v1.name, network_interface = v1.network_interface, resource_group_name = v1.resource_group_name, sku = v1.sku, tags = v1.tags, web_application_firewall = v1.web_application_firewall } }

  nginx_api_keys = merge([
    for k1, v1 in var.nginx_deployments : {
      for k2, v2 in coalesce(v1.nginx_api_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        nginx_deployment_id = module.nginx_deployments.nginx_deployments_id["${k1}"]
      })
    }
  ]...)

  nginx_certificates = merge([
    for k1, v1 in var.nginx_deployments : {
      for k2, v2 in coalesce(v1.nginx_certificates, {}) :
      "${k1}/${k2}" => merge(v2, {
        nginx_deployment_id = module.nginx_deployments.nginx_deployments_id["${k1}"]
      })
    }
  ]...)

  nginx_configurations = merge([
    for k1, v1 in var.nginx_deployments : {
      for k2, v2 in coalesce(v1.nginx_configurations, {}) :
      "${k1}/${k2}" => merge(v2, {
        nginx_deployment_id = module.nginx_deployments.nginx_deployments_id["${k1}"]
      })
    }
  ]...)
}

module "nginx_deployments" {
  source            = "git::https://github.com/AeternaModules/azurerm_nginx_deployment.git?ref=v4.80.0"
  nginx_deployments = local.nginx_deployments
}

module "nginx_api_keys" {
  source         = "git::https://github.com/AeternaModules/azurerm_nginx_api_key.git?ref=v4.80.0"
  nginx_api_keys = local.nginx_api_keys
  depends_on     = [module.nginx_deployments]
}

module "nginx_certificates" {
  source             = "git::https://github.com/AeternaModules/azurerm_nginx_certificate.git?ref=v4.80.0"
  nginx_certificates = local.nginx_certificates
  depends_on         = [module.nginx_deployments]
}

module "nginx_configurations" {
  source               = "git::https://github.com/AeternaModules/azurerm_nginx_configuration.git?ref=v4.80.0"
  nginx_configurations = local.nginx_configurations
  depends_on           = [module.nginx_deployments]
}

