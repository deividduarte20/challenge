#!/bin/bash

# Atribui permissão  
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user $(gcloud config get-value account)

# Instala ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.7.0/deploy/static/provider/cloud/deploy.yaml

# Aguarda LoadBalancer gerar ip
sleep 80

# Obtem ip do ingress loadbalancer e armazena na variavel
export NGINX_INGRESS_IP=$(kubectl get svc -n ingress-nginx | awk '{print " " $4}' | sed 's/ //g' | sed '1d' | sed '2d')

# Insere ip do Loadbalancer no hostname do ingress
sed -i "s/teste/${NGINX_INGRESS_IP}/g" manifests/simpleapp-ingress.yaml

# Aplica os manifestos no kubernetes
kubectl apply -f ./manifests
