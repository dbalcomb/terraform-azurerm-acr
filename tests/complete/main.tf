module "acr" {
  source = "../../"

  name       = "my-first-registry"
  location   = "uksouth"
  dns_prefix = "myfirstregistry"

  tags = {
    custom = "yes"
  }
}
