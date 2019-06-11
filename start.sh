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

./downloadFabric.sh
./startFabric.sh
./createPeerAdminCard.sh