#!/bin/bash
cd /tmp || exit
echo "Downloading Knative CLI ..."
wget -q https://github.com/knative/client/releases/download/v0.20.0/kn-darwin-amd64

echo "Installing to /usr/local/bin..."

if [ "/usr/local/bin/kn" ];then
    sudo rm /usr/local/bin/kn
fi

sudo mv kn-darwin-amd64 /usr/local/bin/kn
sudo chmod +x /usr/local/bin/kn

echo "Installation completed successfully."

echo "Done...You can use Knative CLI!"
