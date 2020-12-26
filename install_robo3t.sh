#!/bin/bash
cd /tmp || exit
echo "Downloading Robo3T ..."
wget -q https://download-test.robomongo.org/linux/robo3t-1.3.1-linux-x86_64-7419c406.tar.gz
tar -xzf robo3t-1.3.1-linux-x86_64-7419c406.tar.gz
rm robo3t-1.3.1-linux-x86_64-7419c406.tar.gz

echo "Installing to opt..."
if [ -d "/opt/Robo3T" ];then
    sudo rm -rf /opt/Robo3T
fi
sudo mv robo3t-1.3.1-linux-x86_64-7419c406 /opt/Robo3T

echo "Creating symbolic link..."
if [ -L "/usr/bin/robo3t" ];then
    sudo rm -f /usr/bin/robo3t
fi
sudo ln -s /opt/Robo3T/bin/robo3t /usr/bin/robo3t

echo "Installation completed successfully."

echo "Downloading Robo 3T Logo...."
cd /opt/Robo3T
wget -q https://robomongo.org/static/robomongo-128x128-129df2f1.png

echo "Creating desktop entry for Robomongo."

cat > ~/.local/share/applications/robo3t.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Robo 3T
Exec=/opt/Robo3T/bin/robo3t
Icon=/opt/Robo3T/robomongo-128x128-129df2f1.png
Terminal=false
Type=Application
Categories=Development;
StartupNotify=true
EOL

echo "Done...You can use Robo 3T!"
