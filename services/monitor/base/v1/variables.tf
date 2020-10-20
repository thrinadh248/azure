variable "context" {
  type = object({
    application_name    = string
    environment_name    = string
    resource_group_name = string
    location            = string
    location_suffix     = string
  })
}
/*
variable "custom_rules_settings" {
    type = object({
        name                = string
        scopes              = list(string)
        description         = string
        metric_namespace    = string
        metric_name         = string
        aggregation         = string
        operator            = string
        threshold           = string
        dimensions_name     = string
        dimensions_operator = string
        values              = list(string)
        action_group_id     = string
    })
}
*/
variable "custom_rules_settings" {
    type = object({
      action_group_id     = string
    })
}

variable "criteria_settings" {
    type = list(object({
        metric_namespace    = string
        metric_name         = string
        aggregation         = string
        operator            = string
        threshold           = string
        name                = string
        operator            = string
        values              = list(string)
    }))  
}
/*
variable "name" {
    type = list(string)

}

variable "scopes" {
  type = list(string)

}    

variable "description" {
  type = list(string)

} 
*/
variable "alert_settings" {
  type =object({
    name   =string
    scopes = list(string)
    description = string
  }

  )
}    
