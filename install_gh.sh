#!/bin/bash
cd /tmp || exit
echo "Downloading Github CLI ..."
wget -q https://github.com/cli/cli/releases/download/v1.3.1/gh_1.3.1_macOS_amd64.tar.gz
tar -xzf gh_1.3.1_macOS_amd64.tar.gz
rm gh_1.3.1_macOS_amd64.tar.gz

echo "Installing to /usr/local/bin..."
if [ "/usr/local/bin/gh" ];then
    sudo rm /usr/local/bin/gh
fi
sudo mv gh_1.3.1_macOS_amd64/bin/gh /usr/local/bin/gh

echo "Installation completed successfully."

echo "Done...You can use Github CLI!"
