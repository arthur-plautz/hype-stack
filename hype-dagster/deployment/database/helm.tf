resource "helm_release" "database" {
  name       = "dagster-database"
  namespace  = var.namespace
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "postgresql"
  version    = "12.1.14"

  set {
    name  = "global.postgresql.auth.existingSecret"
    value = local.auth_secret
  }
  set {
    name  = "global.postgresql.auth.secretKeys.adminPasswordKey"
    value = "password"
  }
  set {
    name  = "auth.database"
    value = local.database_name
  }
}
