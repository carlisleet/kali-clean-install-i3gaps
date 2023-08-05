#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-get install -y kali-linux-large
sudo apt-get install -y arandr flameshot feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo papirus-icon-theme imagemagick
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt-get install -y kali-desktop-i3-gaps
sudo apt-get install -y kpcli
sudo apt-get install -y dbeaver
sudo apt-get install -y neo4j
sudo apt-get install -y odat
sudo apt-get install -y bloodhound
sudo apt-get install -y alacritty

mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip

unzip Iosevka.zip -d ~/.local/share/fonts/
unzip RobotoMono.zip -d ~/.local/share/fonts/

fc-cache -fv

mkdir ~/tools/
cd ~/tools
git clone https://github.com/xFreed0m/ADFSpray.git
git clone https://github.com/zer1t0/certi.git
git clone https://github.com/mdsecactivebreach/Chameleon.git
git clone https://github.com/dirkjanm/mitm6.git
git clone https://github.com/GTFOBins/GTFOBins.github.io.git
git clone https://github.com/LOLBAS-Project/LOLBAS-Project.github.io.git
git clone https://github.com/DominicBreuker/pspy.git
git clone https://github.com/dirkjanm/ROADtools.git
git clone https://github.com/dirkjanm/krbrelayx.git
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/Flangvik/SharpCollection.git
git clone https://github.com/ly4k/Certipy.git
git clone https://github.com/p0dalirius/Coercer.git
git clone https://github.com/login-securite/DonPAPI.git
git clone https://github.com/dirkjanm/PKINITtools.git

wget https://github.com/gchq/CyberChef/releases/download/v10.5.2/CyberChef_v10.5.2.zip -O CyberChef.zip
unzip CyberChef.zip

pip install wtfis
pip install pywal

mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty
cp .config/i3/config ~/.config/i3/config
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/compton/compton.conf ~/.config/compton/compton.conf
cp .config/rofi/config ~/.config/rofi/config
cp .fehbg ~/.fehbg
cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
cp -r .wallpaper ~/.wallpaper 
sudo cp .wallpaper/* /usr/share/pixmaps/.

echo "Done! Grab some wallpaper and run pywal -i filename to set your color scheme. To have the wallpaper set on every boot edit ~.fehbg"
echo "After reboot: Select i3 on login, run lxappearance and select kali-dark"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
