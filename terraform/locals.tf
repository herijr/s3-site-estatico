locals {
  has_domain = var.domain != ""
  domain = local.has_domain ? var.domain : random_pet.website.id
  regional_domain = module.website.regional_domain_name

  common_tags = {
    Project   = "Curso de Terraform e AWS"
    Service   = "Static Website"
    CreatedAt = "2021-05-23"
    Module    = "3"
  }
}
