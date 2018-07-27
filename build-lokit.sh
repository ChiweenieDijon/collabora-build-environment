apt-get -y install libcups2-dev libfontconfig1-dev gperf openjdk-8-jdk openjdk-8-jdk graphviz yasm libxslt1-dev xsltproc libxml2-utils python3-lxml python3-cxx-dev comerr-dev uuid flex bison zip ant libepoxy-dev libxext-dev
git clone https://anongit.freedesktop.org/git/libreoffice/core.git
cd core
./autogen.sh --without-krb5 --without-gssapi --without-junit --disable-gui
make
make install
