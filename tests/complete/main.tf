module "acr" {
  source = "../../"

  name   = "my-registry"
  region = "uksouth"
  prefix = "myregistry"
  tier   = "Standard"

  tags = {
    custom = "yes"
  }
}

module "image" {
  source = "../../modules/image"

  name      = "my-image"
  namespace = "custom"
  tag       = "latest"
  registry  = module.acr
}
