# k8s-observability-elk-stack

This project sets up a full observability stack on Kubernetes using Prometheus, Grafana, Fluentd, Elasticsearch, and Kibana.

## 🔧 Stack Components
- Prometheus: Metrics scraping
- Grafana: Metrics dashboards
- Fluentd: Log collection
- Elasticsearch: Log storage
- Kibana: Log visualization

### 1. Start Minikube
```bash
minikube start --memory=4096 --cpus=2

### 1. clone repo
git clone ...

### . Install helm charts
cd helm
bash install.sh

###. Deploy cpu-stress
kubectl apply -f manifests/cpu-stress.yaml

###. Access Dashboards
- Grafana: kubectl port-forward svc/prometheus-grafana 3000:80
- Kibana: kubectl port-forward svc/kibana-kibana 5601:5601



