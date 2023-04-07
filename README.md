# challenge

# Requisitos

|-----------------------|
|git|
|terraform|
|gcloud-cli|
|gke-gcloud-auth-plugin|
|-----------------------|

# Inicie o projeto
```bash
terraform init
```

# Aplique a infraestrutura como código
terraform apply

# Logar com gcloud-cli
gcloud auth login

# Defina o nome do projeto da console GCP
gcloud config set project <PROJECT_ID>

# Para se conectar ao cluster GKE (Substitua <CLUSTER_NAME> pelo nome do cluster e region)
gcloud container clusters get-credentials "my-gke-cluster" --region "us-central1"

# Para testar comunicação 
kubectl get nodes

# Atribua permissão de execução do shell script
chmod +x provisiona_deploy.sh

./provisiona_deploy.sh