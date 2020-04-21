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
