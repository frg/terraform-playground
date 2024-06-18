product_resourcegroup = "example-resource-group"

collections_per_database = {
  collection1 = {
    collection_key  = "collection1"
    collection_name = "example-collection-1"
    account_name    = "example-account-1"
    db_name         = "example-db-1"
    collection_settings = {
      default_ttl_seconds = 1337
      shard_key           = "example-shard-key-1"
      indexes             = [
        {
          key_list  = ["key1"]
          is_unique = true
        }
      ]
    }
  }
  collection2 = {
    collection_key  = "collection2"
    collection_name = "example-collection-2"
    account_name    = "example-account-2"
    db_name         = "example-db-2"
    collection_settings = {
      default_ttl_seconds = null
      shard_key           = "example-shard-key-2"
      indexes             = [
        {
          key_list  = ["key2"]
          is_unique = false
        }
      ]
    }
  }
  collection3 = {
    collection_key  = "collection3"
    collection_name = "example-collection-3"
    account_name    = "example-account-3"
    db_name         = "example-db-3"
    collection_settings = {
      shard_key           = "example-shard-key-3"
      indexes             = [
        {
          key_list  = ["key3"]
          is_unique = false
        }
      ]
    }
  }
}