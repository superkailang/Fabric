#! For Ubuntu 

curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh
chmod u+x prereqs-ubuntu.sh
sudo ./prereqs-ubuntu.sh

#!   NODEJS  8 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs

sudo npm install -g composer-cli --unsafe-perm=true --allow-root
sudo npm install -g yo --unsafe-perm=true --allow-root
sudo npm install -g generator-hyperledger-composer --unsafe-perm=true --allow-root
sudo npm install -g composer-rest-server --unsafe-perm=true --allow-root
sudo npm install -g composer-playground --unsafe-perm=true --allow-root

# npm install -g composer-playground
mkdir fabric-tools
cd fabric-tools/

curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz

tar -xvf fabric-dev-servers.tar.gz

sudo ./downloadFabric.sh
sudo ./startFabric.sh
sudo ./createPeerAdminCard.sh
