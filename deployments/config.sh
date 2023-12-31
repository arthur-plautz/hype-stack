eval $(minikube docker-env)

export KUBECONFIG=$HOME/.kube/dagster_local_config

export TF_VAR_docker_host=$DOCKER_HOST
export TF_VAR_kube_config=$KUBECONFIG

export CLUSTER_MEMORY=3196
export CLUSTER_CPUS=2