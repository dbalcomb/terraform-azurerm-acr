variable "name" {
  description = "The registry name"
  type        = string
}

variable "location" {
  description = "The registry location"
  type        = string
}

variable "sku" {
  description = "The registry SKU"
  default     = "Basic"
  type        = string
}

variable "dns_prefix" {
  description = "The registry DNS prefix"
  type        = string
}

variable "environment" {
  description = "The environment name"
  default     = "production"
  type        = string
}

variable "provisioner" {
  description = "The provisioner name"
  default     = "terraform"
  type        = string
}

variable "stack" {
  description = "The stack name"
  default     = "acr"
  type        = string
}

variable "tags" {
  description = "The resource tags"
  default     = {}
  type        = map(string)
}
