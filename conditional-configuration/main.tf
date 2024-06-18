locals {
  collections = { for cfg in var.collections_per_database :
    cfg.collection_key => merge(
      {
        name                = cfg.collection_name
        resource_group_name = var.product_resourcegroup
        account_name        = cfg.account_name
        database_name       = cfg.db_name
        shard_key           = cfg.collection_settings.shard_key
      },
      # Using merge allows us to conditionally choose whether `default_ttl_seconds` to detect for null (either explicit or through it being optional) is present within the object or not
      cfg.collection_settings.default_ttl_seconds != null ? { default_ttl_seconds = cfg.collection_settings.default_ttl_seconds } : {}
    )
  }
}

resource "null_resource" "collections_per_database" {
  for_each = local.collections

  triggers = each.value
}

output "collections" {
  value = [for k, v in local.collections : {
    collection_key = k
    settings       = v
  }]
}
