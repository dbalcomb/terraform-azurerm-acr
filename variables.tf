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
