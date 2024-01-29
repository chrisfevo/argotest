#!/bin/zsh

kubectl create namespace argocd
#helm repo add argo https://argoproj.github.io/argo-helm
#kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
helm dependency build
helm upgrade --install argo-cd . -f values.yaml
helm template root-app/ | kubectl apply -f -
kubectl get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
kubectl port-forward svc/argo-cd-argocd-server 8085:80
8WTgZw5OYPNnymFR

