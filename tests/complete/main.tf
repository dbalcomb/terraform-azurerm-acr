module "acr" {
  source = "../../"

  name   = "my-registry"
  region = "uksouth"
  prefix = "myregistry"
  tier   = "Standard"

  pull_access = {
    example = "...",
  }

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
