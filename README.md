# terraform-azurerm-acr

Terraform modules for [Azure Container Registry (ACR)](https://azure.microsoft.com/en-gb/services/container-registry/).

## Usage

```hcl
module "acr" {
  source = "github.com/dbalcomb/terraform-azurerm-acr"

  name   = "my-registry"
  region = "uksouth"
  prefix = "myregistry"
  tier   = "Premium"
}
```

## Inputs

| Name            | Type     | Default | Description                        |
| --------------- | -------- | ------- | ---------------------------------- |
| `name`          | `string` |         | The registry name                  |
| `region`        | `string` |         | The target resource region         |
| `prefix`        | `string` |         | The registry domain prefix         |
| `tier`          | `string` | "Basic" | The registry service tier          |
| `pull_access`   | `object` | `{}`    | The principal IDs with pull access |
| `pull_access.*` | `string` |         | The principal ID                   |
| `tags`          | `object` | `{}`    | The resource tags                  |
| `tags.*`        | `string` |         | The tag value                      |

## Outputs

| Name       | Type     | Description                |
| ---------- | -------- | -------------------------- |
| `id`       | `string` | The registry ID            |
| `name`     | `string` | The registry name          |
| `group`    | `string` | The target resource group  |
| `region`   | `string` | The target resource region |
| `prefix`   | `string` | The registry domain prefix |
| `tier`     | `string` | The registry service tier  |
| `url`      | `string` | The server address URL     |
| `username` | `string` | The admin account username |
| `password` | `string` | The admin account password |

## Modules

- [Image](modules/image/README.md)
- [Registry](modules/registry/README.md)
