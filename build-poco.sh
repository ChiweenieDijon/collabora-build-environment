#build poco (need it because debian package doesn't have JSON parser component
curl https://pocoproject.org/releases/poco-1.9.0/poco-1.9.0.tar.gz | tar -xz
cd poco-1.9.0
./configure  --no-tests --no-samples --prefix=dist
make -s install