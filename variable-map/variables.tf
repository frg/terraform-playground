variable "cosmos_databases_per_environment" {
  description = ""
  type = map(object({
    collections = map(object({
      shard_key           = string,
      default_ttl_seconds = number,
      indexes = map(object({
        key_list  = set(string),
        is_unique = bool
      }))
    }))
  }))
  default = {
    env1 = {
      collections = {
        coll1 = {
          shard_key           = "defaultShardKey",
          default_ttl_seconds = -1,
          indexes = {
            index1 = {
              key_list  = ["defaultkey1", "defaultkey2"],
              is_unique = true
            }
          }
        }
      }
    }
  }
}
