resource "docker_image" "dagster_nlp_example" {
  name = local.image_name

  build {
    context = "../environments/nlp-example"
    tag     = [local.image_tag]

    force_remove = true
    no_cache = true
    network_mode = "host"
  }
}