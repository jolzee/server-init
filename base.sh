sudo apt-get update
sudo apt-get install -y \
	git \
        nano \
        xclip \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
        tmux

cd /usr/local/bin
curl https://getmic.ro | sudo bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

cd ~
mdir code
cd code
git clone git@github.com:jolzee/tmux-config
cd tmux-config
chmod +x ./install.sh
./install.sh
cd ~

echo "SSH KEY IS HERE"
cat ~/.ssh/
ssh-keygen -t rsa -b 4096 -C "server@jolzee"
