resource "docker_image" "dagster" {
  name = "dagster"

  build {
    context = "../"
    tag     = [local.image_tag]

    force_remove = true
    no_cache = true
    network_mode = "host"
  }
}