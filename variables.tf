variable "imagebuilder_infrastructure_configuration_lookup" {
  description = <<EOT
Map of imagebuilder_infrastructure_configuration_lookup, attributes below
Required:
    - arn
Optional:
    - region
    - resource_tags
    - tags
EOT

  type = map(object({
    arn           = string
    region        = optional(string)
    resource_tags = optional(map(string))
    tags          = optional(map(string))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

