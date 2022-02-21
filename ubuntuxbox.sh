sudo echo -e "\n#this are the new lines\ndeb cdrom:[Ubuntu 21.10 _Impish Indri_ - Release amd64 (20211012)]/ impish main restricted\ndeb http://archive.ubuntu.com/ubuntu/ impish main restricted\ndeb http://security.ubuntu.com/ubuntu/ impish-security main restricted\ndeb http://archive.ubuntu.com/ubuntu/ impish-updates main restricted\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute main restricted\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute main restricted\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute-updates main restricted\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute-updates main restricted\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute universe\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute universe\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute-updates universe\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute-updates universe\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute multiverse\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute multiverse\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute-updates multiverse\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute-updates multiverse\ndeb http://us.archive.ubuntu.com/ubuntu/ hirsute-backports main restricted universe multiverse\ndeb-src http://us.archive.ubuntu.com/ubuntu/ hirsute-backports main restricted universe multiverse\ndeb http://archive.canonical.com/ubuntu hirsute partner\ndeb-src http://archive.canonical.com/ubuntu hirsute partner\ndeb http://security.ubuntu.com/ubuntu hirsute-security main restricted\ndeb-src http://security.ubuntu.com/ubuntu hirsute-security main restricted\ndeb http://security.ubuntu.com/ubuntu hirsute-security universe\ndeb-src http://security.ubuntu.com/ubuntu hirsute-security universe\ndeb http://security.ubuntu.com/ubuntu hirsute-security multiverse\ndeb-src http://security.ubuntu.com/ubuntu hirsute-security multiverse" >> /etc/apt/sources.list

sudo apt-add-repository -y ppa:rael-gc/ubuntu-xboxdrv
sudo apt-get update
sudo apt-get install ubuntu-xboxdrv

sudo apt-get install xboxdrv
sudo systemctl enable xboxdrv.service
sudo systemctl start xboxdrv.service
sudo echo -e "[xboxdrv]\nsilent = true\nnext-controller = true\nnext-controller = true\nnext-controller = true" > /etc/default/xboxdrv/ 

echo /etc/default/xboxdrv/
sudo systemctl restart xboxdrv.service
