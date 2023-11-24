locals {
  database_user = "postgres"
  database_name = "dagster"
  database_port = "5432"
  database_host = "dagster-database-postgresql"

  auth_secret = "dagster-database-password"
  database_storage_path = "/src/data/database"
}

variable "namespace" {
  type = string
}

variable "database_password" {
  type = string
  sensitive = true
  default = "dagster"
}