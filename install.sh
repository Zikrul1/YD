#!/data/data/com.termux/files/usr/bin/bash

echo "Updating default packages"
apt update && apt -y upgrade
echo "Installing Required Tools"
apt install termux-api figlet python ffmpeg -y

echo "Requesting access to storage"
termux-setup-storage
sleep 5

echo "Installing Dependencies"
yes | pip install youtube-dl

echo "Creating the Youtube folder to download the files"
mkdir ~/storage/shared/youtube

echo "Creating youtube-dl folder for config"
mkdir -p ~/.config/youtube-dl

echo "Creating bin folder"
mkdir ~/bin
 
echo "Downloading and installing termux-url-opener"
curl https://raw.githubusercontent.com/Zikrul1/YD/main/setting -o ~/bin/termux-url-opener
sleep 2
dos2unix ~/bin/termux-url-opener

echo ""
echo "Modified by :"
figlet Z i k r u l
