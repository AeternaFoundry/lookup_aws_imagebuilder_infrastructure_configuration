data "aws_imagebuilder_infrastructure_configuration" "imagebuilder_infrastructure_configuration_lookup" {
  for_each = var.imagebuilder_infrastructure_configuration_lookup

  arn           = each.value.arn
  region        = each.value.region
  resource_tags = each.value.resource_tags
  tags          = each.value.tags
}

