# Dagster Deployment

Requirements:
- [Docker](https://www.docker.com/);
- [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/);
- [Minikube](https://minikube.sigs.k8s.io/docs/start/);
- [Terraform](https://registry.terraform.io/);

## Create Cluster

```bash
bash cluster.sh
```

## Initialize Terraform

```bash
source config.sh
terraform init
```

## Create Infrastructure


```bash
source config.sh
terraform apply
```

## Monitoring

```bash
source config.sh
kubectl get pods -n dagster
```

## Interface

```bash
source config.sh
kubectl port-forward deployment/dagster-dagster-webserver 3000:80 -n dagster
```

## Destroy Infrastructure

```bash
source config.sh
terraform destroy
```

## Destroy Cluster

```bash
source config.sh
minikube delete
```
