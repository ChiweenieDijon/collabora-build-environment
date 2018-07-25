apt-get update && apt-get -y upgrade

apt-get -y install locales-all apt-utils git build-essential curl


#autogen requirements
apt-get -y install libtool m4 autotools-dev automake

#build requirements (configure phase) 
#libpoco-dev
apt-get -y install libpng-dev pkg-config libpam-dev libcap-dev libcap2-bin zlib1g-dev libcppunit-dev libreofficekit-dev 


#to fulfill npm requirement ( see https://deb.nodesource.com/setup_9.x )
cat nodesource_setup_node.sh | bash -
apt-get install -y nodejs

