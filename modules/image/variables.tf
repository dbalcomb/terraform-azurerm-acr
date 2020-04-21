variable "name" {
  description = "The image name"
  type        = string
}

variable "namespace" {
  description = "The image namespace"
  default     = ""
  type        = string
}

variable "tag" {
  description = "The image tag"
  default     = "latest"
  type        = string
}

variable "registry" {
  description = "The image registry"
  default     = { url = "docker.io" }
  type        = object({ url = string })
}
