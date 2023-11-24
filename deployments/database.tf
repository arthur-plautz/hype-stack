module "database" {
  source = "./database"

  namespace         = local.dagster_namespace
  database_password = var.dagster_database_password
}
