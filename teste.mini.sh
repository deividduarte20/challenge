#!/bin/bash

# if ! [ -x "$(command -v kubectl)" ]; then
#   echo "Adding Kubernetes yum repository..."
#   sudo bash -c "cat <<EOF > /etc/yum.repos.d/kubernetes.repo
# [kubernetes]
# name=Kubernetes
# baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
# enabled=1
# gpgcheck=1
# repo_gpgcheck=1
# gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
# EOF"

#   echo "Installing kubectl..."
#   sudo yum install -y kubectl
# else
#   echo "kubectl is already installed"
# fi

if ! [ -x "$(command -v minikube)" ]; then
  # Baixa o último release do Minikube
  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

  # Move o arquivo para o diretório /usr/local/bin
  sudo install minikube-linux-amd64 /usr/local/bin/minikube

  # Instala o driver do VirtualBox
  sudo apt install virtualbox-ext-pack -y

  echo "Configuring minikube..."
  sudo minikube config set driver virtualbox
else
  echo "minikube is already installed"
fi

  # Inicia o Minikube com o driver VirtualBox
  minikube start



# set tempFolder=$PWD

# cd ~

# rm .kube -rf
# rm .minikube -rf

# sudo mv /root/.kube $HOME/
# sudo chown -R $USER $HOME/.kube
# sudo chgrp -R $USER $HOME/.kube

# sudo mv /root/.minikube $HOME/
# sudo chown -R $USER $HOME/.minikube
# sudo chgrp -R $USER $HOME/.minikube

# cd $tempFolder

# sed -i "s:/root/:/home/$USER/:g" $HOME/.kube/config


