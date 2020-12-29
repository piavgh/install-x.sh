#!/bin/bash
cd /tmp || exit
echo "Downloading kubectl ..."
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl"

chmod +x ./kubectl

echo "Installing to /usr/local/bin..."

if [ "/usr/local/bin/kubectl" ];then
    sudo rm /usr/local/bin/kubectl
fi

sudo mv ./kubectl /usr/local/bin/kubectl

kubectl version --client

echo "Installation completed successfully."

echo "Done...You can use kubectl!"
