variable "context" {
  type = object({

    application_name    = string
    environment_name    = string
    resource_group_name = string

    location            = object({
      name = string
      suffix = string
      number = number
    })

  })
}

variable "service_settings" {
  type = object({

    endpoint              = string

    product = object({
      id                    = string
      description           = string
      approval_required     = bool
      subscription_required = bool
      subscriptions_limit   = number
      publish               = bool
    })

  })
}