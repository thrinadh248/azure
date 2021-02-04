resource "azurerm_api_management_product" "product" {

  resource_group_name   = var.context.resource_group_name
  api_management_name   = var.service_settings.endpoint

  product_id            = var.service_settings.product.id
  display_name          = var.service_settings.product.description
  
  subscription_required = var.service_settings.product.subscription_required
  subscriptions_limit   = var.service_settings.product.subscriptions_limit

  approval_required     = var.service_settings.product.approval_required
  published             = var.service_settings.product.publish

}