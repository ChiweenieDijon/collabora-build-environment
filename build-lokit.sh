git clone https://anongit.freedesktop.org/git/libreoffice/core.git
cd core
./autogen.sh --without-krb5 --without-gssapi --without-junit --disable-gui
make
make install
