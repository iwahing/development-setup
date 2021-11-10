#/bin/bash

FONT_VERSION=v2.1.0

sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

mkdir ~/.poshthemes/
chmod u+rw ~/.poshthemes/*.json

echo ${eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/my-theme.json)"} >> ~/.bashrc
bash

# Install Ubuntu Nerd Font --> you can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/${FONT_VERSION}/Meslo.zip"

wget https://github.com/ryanoasis/nerd-fonts/releases/download/${FONT_VERSION}/Meslo.zip
unzip Meslo.zip -d ~/.fonts
fc-cache -fv

echo "DONE!"