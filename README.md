# challenge

### Este desafio consiste em provisionar um cluster GKE via terraform e com shell script provisiona deployment, service, configmap e ingress controller nginx.

## Requisitos


</br>git
</br>kubectl
</br>terraform
</br>gcloud-cli
</br>gke-gcloud-auth-plugin

## Baixe o projeto
```bash
git clone https://github.com/deividduarte20/challenge.git
```

## Entre no diretório challenge
```bash
cd challenge 
```

## Atenção deve-se inserir a chave.json (service account gcp) dentro do diretório challenge.
## Altere o nome do projeto da gcp no arquivo provider.tf 

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

## Defina o ID do projeto da console GCP
```bash
gcloud config set project <PROJECT_ID>
```

## Para se conectar ao cluster GKE 
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

## Acesso a url
<img src="images/api.png">

<img src="images/api_path.png">
