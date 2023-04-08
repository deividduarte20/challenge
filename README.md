# challenge

## Este desafio consiste em provisionar um cluster
GKE via terraform e com shell script proviona 
Deployment, service, configmap e ingress controller
nginx.

## Requisitos


</br>git
</br>kubectl
</br>terraform
</br>gcloud-cli
</br>gke-gcloud-auth-plugin

## Inicie o projeto
```bash
terraform init
```

## Aplique a infraestrutura como código
```bash
terraform apply
```

## Logar com gcloud-cli
```bash
gcloud auth login
```

## Defina o nome do projeto da console GCP
```bash
gcloud config set project <PROJECT_ID>
```

## Para se conectar ao cluster GKE (Substitua <CLUSTER_NAME> pelo nome do cluster e region)
```bash
gcloud container clusters get-credentials "my-gke-cluster" --region "us-central1"
```

## Para testar comunicação 
```bash
kubectl get nodes
```

## Atribua permissão de execução do shell script
```bash
chmod +x provisiona_deploy.sh
```

## Execute o script responsável por prover ingress controller, aplicação de deployment, service, configmap e ingress
```bash
./provisiona_deploy.sh
```


## obtenha o endereço de acesso a aplicação:
```bash
kubectl get ingress 
```
