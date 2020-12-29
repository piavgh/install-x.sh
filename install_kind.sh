#!/bin/bash
cd /tmp || exit
echo "Downloading Kind ..."
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.9.0/kind-darwin-amd64

chmod +x ./kind

echo "Installing to /usr/local/bin..."

if [ "/usr/local/bin/kind" ];then
    sudo rm /usr/local/bin/kind
fi

sudo mv ./kind /usr/local/bin/kind

kind version

echo "Installation completed successfully."

echo "Done...You can use Kind!"
