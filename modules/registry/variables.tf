variable "name" {
  description = "The registry name"
  type        = string
}

variable "group" {
  description = "The target resource group"
  type        = string
}

variable "region" {
  description = "The target resource region"
  type        = string
}

variable "tier" {
  description = "The registry service tier"
  default     = "Basic"
  type        = string
}

variable "tags" {
  description = "The resource tags"
  default     = {}
  type        = map(string)
}
