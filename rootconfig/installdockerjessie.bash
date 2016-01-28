sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D || exit 1
sudo apt-get install -y apt-transport-https || exit 1
sudo echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list || exit 1
sudo apt-get update
sudo apt-get install docker-engine

