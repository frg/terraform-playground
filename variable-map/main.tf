terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {
}

resource "local_file" "example" {
  content  = <<-EOT
    Environment: ${var.cosmos_databases_per_environment.env1.collections.coll1.shard_key}
    Shard Key: ${var.cosmos_databases_per_environment.env1.collections.coll1.shard_key}
    Default TTL: ${var.cosmos_databases_per_environment.env1.collections.coll1.default_ttl_seconds}
    Index Key List: ${join(", ", var.cosmos_databases_per_environment.env1.collections.coll1.indexes.index1.key_list)}
    Is Unique: ${var.cosmos_databases_per_environment.env1.collections.coll1.indexes.index1.is_unique}
  EOT
  filename = "${path.module}/output.txt"
}
