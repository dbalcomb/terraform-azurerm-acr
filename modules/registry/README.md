# Registry

This module configures an Azure Container Registry (ACR) that can be used to
store private container images and cache public ones for both resiliency and
security purposes.

## Usage

```hcl
module "registry" {
  source = "github.com/dbalcomb/terraform-azurerm-acr//modules/registry"

  name   = "myregistry"
  group  = "my-resource-group"
  region = "uksouth"
  tier   = "Premium"
}
```

## Inputs

| Name     | Type     | Default | Description                |
| -------- | -------- | ------- | -------------------------- |
| `name`   | `string` |         | The registry name          |
| `group`  | `string` |         | The target resource group  |
| `region` | `string` |         | The target resource region |
| `tier`   | `string` | "Basic" | The registry service tier  |
| `tags`   | `object` | `{}`    | The resource tags          |
| `tags.*` | `string` |         | The tag value              |

## Outputs

| Name       | Type     | Description                |
| ---------- | -------- | -------------------------- |
| `id`       | `string` | The registry ID            |
| `name`     | `string` | The registry name          |
| `group`    | `string` | The target resource group  |
| `region`   | `string` | The target resource region |
| `tier`     | `string` | The registry service tier  |
| `url`      | `string` | The server address URL     |
| `username` | `string` | The admin account username |
| `password` | `string` | The admin account password |

## References

- [Azure Container Registry](https://docs.microsoft.com/en-gb/azure/container-registry/)
