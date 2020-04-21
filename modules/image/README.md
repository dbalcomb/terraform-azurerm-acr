# Image

This module configures a Docker image reference that can be used to reference
Docker images from various repositories including the Azure Container Registry.

## Usage

The following example references a docker image with the full name
`example.azurecr.io/custom/my-image:latest`.

```hcl
module "acr" {
  source = "github.com/dbalcomb/terraform-azurerm-acr"

  prefix = "example"

  # ...
}

module "image" {
  source = "github.com/dbalcomb/terraform-azurerm-acr//modules/image"

  name      = "my-image"
  namespace = "custom"
  tag       = "latest"
  registry  = module.acr
}
```

## Inputs

| Name           | Type     | Default       | Description                |
| -------------- | -------- | ------------- | -------------------------- |
| `name`         | `string` |               | The image name             |
| `namespace`    | `string` | `""`          | The image namespace        |
| `tag`          | `string` | `"latest"`    | The image tag              |
| `registry`     | `object` |               | The image registry         |
| `registry.url` | `string` | `"docker.io"` | The image registry address |

## Outputs

| Name         | Type     | Description          |
| ------------ | -------- | -------------------- |
| `name`       | `string` | The image name       |
| `namespace`  | `string` | The image namespace  |
| `tag`        | `string` | The image tag        |
| `registry`   | `object` | The image registry   |
| `repository` | `string` | The image repository |
| `full_name`  | `string` | The full image name  |

## References

- [Import Container Images](https://docs.microsoft.com/en-gb/azure/container-registry/container-registry-import-images)
- [Repository Namespaces](https://docs.microsoft.com/en-gb/azure/container-registry/container-registry-best-practices#repository-namespaces)
- [Container Registry Concepts](https://docs.microsoft.com/en-gb/azure/container-registry/container-registry-concepts)
