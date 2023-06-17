#!/bin/bash

command=$1
if [[ "$command" == "install" ]] 
then
# Install Ubuntu Nerd Font --> you can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
sudo apt install unzip
unzip Meslo.zip -d ~/.fonts
sudo apt install fontconfig
fc-cache -fv

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh
mkdir ~/.poshthemes/
cp ./my-oh-my-posh-theme.json ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
echo eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/my-oh-my-posh-theme.json)" >> ~/.bashrc
bash

rm Meslo.zip

echo "DONE!"
elif [[ "$command" == "cleanup" ]] 
then 
    rm Meslo.zip    
else
    echo "Actions [install, cleanup]"
    echo "No action for '$1'"
fi