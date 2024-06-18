variable "product_resourcegroup" {
  type = string
}

variable "collections_per_database" {
  type = map(object({
    collection_key  = string
    collection_name = string
    account_name    = string
    db_name         = string
    collection_settings = object({
      default_ttl_seconds = optional(number)
      shard_key           = string
      indexes             = list(object({
        key_list  = list(string)
        is_unique = bool
      }))
    })
  }))
}