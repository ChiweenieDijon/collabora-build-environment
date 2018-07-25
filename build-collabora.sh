git clone https://anongit.freedesktop.org/git/libreoffice/online.git
cd online
git checkout 3.2.2-1
./autogen.sh

#TODO probably need --with-lokit-path --with-lo-path rather than libreofficekit-dev package
# https://github.com/LibreOffice/core

./configure --with-max-connections=200 --with-max-documents=100 --with-poco-includes=../poco-1.9.0/dist/include --with-poco-libs=../poco-1.9.0/dist/lib
make 

echo HOP ON IN:
echo docker run -it code-dev bash