output "key_vault_id" {
  value = azurerm_key_vault.this.id
}

output "vault_uri" {
  value = azurerm_key_vault.this.vault_uri
}

output "access_policy_id" {
  value = azurerm_key_vault_access_policy.current_user.id
}