#!/bin/bash

# Add Helm repos
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add elastic https://helm.elastic.co
helm repo update
# Install Prometheus + Grafana
helm install prometheus prometheus-community/kube-prometheus-stack
# Install Elasticsearch
helm install elasticsearch elastic/elasticsearch
# Install Kibana
helm install kibana elastic/kibana
# Deploy Fluentd (you can use a custom chart or manifest)
kubectl apply -f ../manifests/fluentd-configmap.yaml
kubectl apply -f https://raw.githubusercontent.com/fluent/fluentd-kubernetes-daemonset/master/fluentd-daemonset-elasticsearch-rbac.yaml
