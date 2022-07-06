#APPS INSTALLATION
sudo apt update

sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

sudo apt install curl
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

sudo apt install gparted

sudo apt install htop

cd ~/Downloads/
sudo apt install ./zoom_amd64.deb

sudo apt install ./discord-0.0.18.deb 

sudo apt install ./code_1.68.1-1655263094_amd64.deb

reboot
