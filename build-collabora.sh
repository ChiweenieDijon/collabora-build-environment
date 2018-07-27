git clone https://anongit.freedesktop.org/git/libreoffice/online.git
cd online
#git checkout 3.2.2-1
./autogen.sh

./configure --with-max-connections=200 --with-max-documents=100 --with-poco-includes=/build/poco-1.9.0-all/dist/include --with-poco-libs=/build/poco-1.9.0-all/dist/lib --with-lokit-path=/build/core/include --with-lo-path=/build/core/instdir


mv /sbin/setcap /sbin/setcap_
echo "echo skipping setcap" > /sbin/setcap
chmod +x /sbin/setcap

make 

echo HOP ON IN:
echo docker run -it code-dev bash