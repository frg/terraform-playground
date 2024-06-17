cosmos_databases_per_environment = {
  env1 = {
    collections = {
      coll1 = {
        shard_key           = "explicitShardKey",
        default_ttl_seconds = 999999,
        indexes = {
          index1 = {
            key_list  = ["explicitKey1", "explicitKey2"],
            is_unique = false
          }
        }
      }
    }
  }
}
