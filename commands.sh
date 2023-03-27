sudo apt update
useradd nagios
sudo useradd nagios
sudo passwd nagios
mkdir nagios
cd nagios
wget https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz
tar -xvf nagios-plugins-2.3.3.tar.gz
ls
cd nagios-plugins-2.3.3/
./configure
make
   39  apt-get install -y autoconf automake gcc libc6 libmcrypt-dev make libssl-dev wget
   40  sudo apt-get install -y autoconf automake gcc libc6 libmcrypt-dev make libssl-dev wget
   41  ./configure --enable-command-args
   42  make all
   43  make
   44  ls
   45  cd build-aux/
   46  ls
   47  wget http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD
   # Go Download http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD
   # and also http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD
   # Replace config.guess and config.sub with those 
   sudo rm config.guess
   sudo nano config.guess
   sudo rm config.sub
   sudo nano config.sub
   ./configure --enable-command-args
   make
   sudo make install
   chown nagios.nagios /usr/local/nagios
   sudo chown nagios.nagios /usr/local/nagios
   sudo chown -R nagios.nagios /usr/local/nagios/libexec
   cd ..
   wget https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
   tar xzf nrpe-4.1.0.tar.gz 
   cd nrpe-4.1.0/
   apt-file search libssl | grep libssl-dev
   sudo apt install apt-file
   apt-file update
   sudo apt-file update
   apt-file search libssl | grep libssl-dev
   ./configure --with-ssl=/usr/bin/openssl --with-ssl-lib=/usr/lib/aarch64-linux-gnu
   make all
   ./configure -disable-ssl
   make all
   make install-plugin
   sudo make install-plugin
   sudo make install-daemon
   sudo make install-config
   sudo make install-init
   # Go to Allowed Hosts and add the Nagios server here: 
   sudo nano /usr/local/nagios/etc/nrpe.cfg
   sudo systemctl enable nrpe
   sudo systemctl restart nrpe
