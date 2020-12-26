#!/bin/bash
cd /tmp || exit
echo "Downloading Minikube ..."
wget -q https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64

echo "Installing to /usr/local/bin..."

if [ "/usr/local/bin/minikube" ];then
    sudo rm /usr/local/bin/minikube
fi

sudo mv minikube-darwin-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube

echo "Installation completed successfully."

echo "Done...You can use Minikube!"
