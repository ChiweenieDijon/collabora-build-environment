#build poco (need it because debian package doesn't have JSON parser component
apt-get -y install curl libssl-dev
curl https://pocoproject.org/releases/poco-1.9.0/poco-1.9.0-all.tar.gz | tar -xz
cd poco-1.9.0-all
./configure  --no-tests --no-samples --prefix=dist
make -s install