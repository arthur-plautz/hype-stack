locals {
  dagster_namespace     = "dagster"
  dagster_database_name = "hype_dagster"

  # Docker image definitions
  image_name    = "dagster-local"
  image_version = "0.1"
  image_tag     = "${local.image_name}:${local.image_version}"

  # External database configuration
  database_config = [templatefile("./config/database.yml", {
    database_host: "${module.database.database_host}",
    database_port: "${module.database.database_port}",
    database_name: "${module.database.database_name}",
    database_user: "${module.database.database_user}",
    database_password: "${var.dagster_database_password}"
  })]

  # User code configuration
  code_config     = [file("./config/user-deployments.yml")]

  values_override = concat(
    local.database_config,
    local.code_config
  )
}

variable "dagster_database_password" {
  type      = string
  sensitive = true
  default   = "dagster"
}

variable "docker_host" {
  type = string
}
variable "kube_config" {
  type = string
}
