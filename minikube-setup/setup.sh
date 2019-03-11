#!/usr/bin/bash
# installation script for minikube + none driver on Linux VM
# Mar 11, 2019

date
echo

echo install socat -- needed for kubectl port-forwarding.
sudo apt-get install socat

echo check minikube binary ...
if [ -f /usr/local/bin/minikube ]; then
    echo minikube existing, change to minikube.old
    sudo mv /usr/local/bin/minikube /usr/local/bin/minikube.old
fi

if [ -f /usr/local/bin/kubectl ]; then
    echo kubectl existing, change to kubectl.old
    sudo mv /usr/local/bin/kubectl /usr/local/bin/kubectl.old
fi

echo Install minikube ...
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
&& chmod +x minikube && sudo mv minikube /usr/local/bin

echo 
echo Install kubectl ...
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/\
$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
&& chmod +x kubectl && sudo mv kubectl /usr/local/bin

echo
echo setup MINIKUBE env ...
export MINIKUBE_WANTUPDATENOTIFICATION=false
export MINIKUBE_WANTREPORTERRORPROMPT=false
export MINIKUBE_HOME=$HOME
export CHANGE_MINIKUBE_NONE_USER=true
if [ -d $HOME/.kube ]; then
    sudo rm -r $HOME/.kube
else
    mkdir $HOME/.kube
    touch $HOME/.kube/config
    export KUBECONFIG=$HOME/.kube/config
fi

if [ -d $HOME/.minikube ]; then
    sudo rm -r $HOME/.minikube
fi

echo 
echo minikube start ...
sudo -E minikube start --vm-driver=none

echo 
date

echo add minikube to the current users group.
sudo chown -R $USER $HOME/.minikube
sudo chgrp -R $USER $HOME/.minikube

echo minikube installation done 