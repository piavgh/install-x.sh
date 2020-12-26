#!/bin/bash
cd /tmp || exit
echo "Downloading Minishift ..."

# Update the url for the new version
wget -q https://github.com/minishift/minishift/releases/download/v1.34.3/minishift-1.34.3-darwin-amd64.tgz
tar -xzf minishift-1.34.3-darwin-amd64.tgz # Change file name accordingly
rm minishift-1.34.3-darwin-amd64.tgz

echo "Installing to /usr/local/bin..."
if [ "/usr/local/bin/minishift" ];then
    sudo rm /usr/local/bin/minishift
fi

# You need to change the folder name for the new version
sudo mv minishift-1.34.3-darwin-amd64/minishift /usr/local/bin/minishift

echo "Installation completed successfully."

echo "Done...You can use Minishift!"
