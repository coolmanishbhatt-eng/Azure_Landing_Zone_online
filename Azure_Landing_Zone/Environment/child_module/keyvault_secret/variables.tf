variable "key_vault_id" {
  description = "Azure Key Vault ID"
  type        = string
}

variable "secret_name" {
  description = "Secret name"
  type        = string
}

variable "secret_value" {
  description = "Secret value"
  type        = string
  sensitive   = true
}