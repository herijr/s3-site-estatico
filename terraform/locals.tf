locals {
  has_domain = var.domain != ""
  domain = local.has_domain ? var.domain : random_pet.website.id

  common_tags = {
    Project   = "Curso de Terraform e AWS"
    Service   = "Static Website"
    CreatedAt = "2021-05-23"
    Module    = "3"
  }
}
