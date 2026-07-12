variable "nginx_deployments" {
  description = <<EOT
Map of nginx_deployments, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - automatic_upgrade_channel
    - capacity
    - diagnose_support_enabled
    - email
    - managed_resource_group
    - tags
    - auto_scale_profile (block)
    - frontend_private (block)
    - frontend_public (block)
    - identity (block)
    - logging_storage_account (block)
    - network_interface (block)
    - web_application_firewall (block)
Nested nginx_api_keys (azurerm_nginx_api_key):
    Required:
        - end_date_time
        - name
        - secret_text
Nested nginx_certificates (azurerm_nginx_certificate):
    Required:
        - certificate_virtual_path
        - key_vault_secret_id
        - key_virtual_path
        - name
Nested nginx_configurations (azurerm_nginx_configuration):
    Required:
        - root_file
    Optional:
        - package_data
        - config_file (block)
        - protected_file (block)
EOT

  type = map(object({
    location                  = string
    name                      = string
    resource_group_name       = string
    sku                       = string
    automatic_upgrade_channel = optional(string) # Default: "stable"
    capacity                  = optional(number)
    diagnose_support_enabled  = optional(bool)
    email                     = optional(string)
    managed_resource_group    = optional(string)
    tags                      = optional(map(string))
    auto_scale_profile = optional(list(object({
      max_capacity = number
      min_capacity = number
      name         = string
    })))
    frontend_private = optional(list(object({
      allocation_method = string
      ip_address        = string
      subnet_id         = string
    })))
    frontend_public = optional(object({
      ip_address = optional(list(string))
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    logging_storage_account = optional(list(object({
      container_name = optional(string)
      name           = optional(string)
    })))
    network_interface = optional(list(object({
      subnet_id = string
    })))
    web_application_firewall = optional(object({
      activation_state_enabled = bool
    }))
    nginx_api_keys = optional(map(object({
      end_date_time = string
      name          = string
      secret_text   = string
    })))
    nginx_certificates = optional(map(object({
      certificate_virtual_path = string
      key_vault_secret_id      = string
      key_virtual_path         = string
      name                     = string
    })))
    nginx_configurations = optional(map(object({
      root_file    = string
      package_data = optional(string)
      config_file = optional(list(object({
        content      = string
        virtual_path = string
      })))
      protected_file = optional(list(object({
        content      = string
        virtual_path = string
      })))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.nginx_deployments) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.nginx_deployments : [for kk in keys(coalesce(v0.nginx_api_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.nginx_deployments : [for kk in keys(coalesce(v0.nginx_certificates, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.nginx_deployments : [for kk in keys(coalesce(v0.nginx_configurations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
