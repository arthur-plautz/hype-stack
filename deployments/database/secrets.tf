resource "kubernetes_secret" "dagster_database_password" {
  metadata {
    name = local.auth_secret
    namespace = var.namespace
  }

  data = {
    password = var.database_password
  }
}