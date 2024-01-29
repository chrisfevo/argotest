#!/bin/zsh

kubectl create namespace argocd
helm repo add argo https://argoproj.github.io/argo-helm
#kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
helm dependency build
helm upgrade --install argocd . -n argocd
$ kubectl port-forward svc/argo-cd-argocd-server 8080:443
$ kubectl get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
7gE4Y-SeqmDsrw0n
