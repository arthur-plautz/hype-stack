resource "kubernetes_namespace" "dagster_namespace" {
  metadata {
    name = local.dagster_namespace
  }
}

resource "helm_release" "dagster" {
  name       = "dagster"
  namespace  = local.dagster_namespace
  repository = "https://dagster-io.github.io/helm"
  chart      = "dagster"
  timeout    = 350
  values     = local.values_override

  depends_on = [
    kubernetes_namespace.dagster_namespace,
    docker_image.dagster_nlp_example,
    module.database,
  ]
}
