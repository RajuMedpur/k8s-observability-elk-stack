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
