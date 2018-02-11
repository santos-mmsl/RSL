#!/bin/bash
echo '}{ Restaurar sessão - Instalação }{'
echo ' '
apt install lame libavcodec-extra libav-tools -y
echo 'wget http://www.deb-multimedia.org/pool/non-free/w/w32codecs/w32codecs_20110131-dmo2_i386.deb && dpkg -i w32codecs_20110131-dmo2_i386.deb'
echo 'wget http://download.videolan.org/debian/stable/libdvdcss2_1.2.13-0_i386.deb && dpkg -i libdvdcss2_1.2.13-0_i386.deb'
echo ' '
apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip
echo ' '
apt install qbittorrent -y
echo ' '
apt install chromium-browser -y
echo ' '
apt install default-jre -y
echo ' '
apt install conky -y
echo ' '
apt install gdebi -y
echo ' '
apt install net-tools -y
echo ' '
apt install terminator -y
echo ' '
apt install inkscape -y
echo ' '
apt install bluefish -y
echo ' '
apt install -y gufw
echo ' '
apt install wine -y
echo ' '
apt install synaptic
echo ' '
add-apt-repository ppa:kdenlive/kdenlive-stable
apt update
apt install kdenlive
echo ' '
wget -c https://fpdownload.adobe.com/get/flashplayer/pdc/26.0.0.137/flash_player_npapi_linux.i386.tar.gz
mkdir /usr/lib/flash-player
tar xvzf flash_player_npapi_linux.i386.tar.gz -C /usr/lib/flash-player/
ln -s /usr/lib/flash-player/libflashplayer.so /usr/lib/mozilla/plugins/
ln -s /usr/lib/flash-player/usr/bin/flash-player-properties /usr/bin/
tee /usr/share/applications/flash-player-properties.desktop <<ATALHO
[Desktop Entry]
Name=Adobe Flash Player
Comment=Preferências para o Adobe Flash Player
Exec=flash-player-properties
Icon=/usr/lib/flash-player/usr/share/icons/hicolor/48x48/apps/flash-player-properties.png
Terminal=false
Type=Application
StartupNotify=true
Categories=Settings;
ATALHO
echo ' '
apt install apache2 apache2-utils
systemctl status apache2
systemctl start apache2
systemctl enable apache2
apache2 -v
echo ' '
apt install mariadb-server mariadb-client
systemctl status mysql
systemctl start mysql
systemctl enable mysql
echo "******************** "
echo "1- Digite a senha ROOT"
echo "2- Digite Y para criar a senha de root do server MariaDB"
echo "3- Pressione Enter para Tudo"
echo "******************** "
mysql_secure_installation
echo ' '
apt install php7.0-fpm php7.0-mysql php7.0-common php7.0-gd php7.0-json php7.0-cli php7.0-curl libapache2-mod-php7.0
a2enmod php7.0
systemctl restart apache2
php –version
echo ' '
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt update
apt install spotify-client
echo ' '
add-apt-repository ppa:webupd8team/sublime-text-3
apt update
apt install sublime-text-installer
echo ' '
wget https://launchpad.net/~sbasalaev/+archive/ubuntu/pub/+files/snes9x-gtk_1.53-0pub6_i386.deb -O snes9x.deb
dpkg -i snes9x.deb
apt install -f
echo ' '
#echo 'Plank'
#apt-get install plank -y
#echo ' [Desktop Entry]
#Name=Plank Config
#GenericName=Dock config
#Comment=Stupidly simple.
#Categories=Utility;
#Type=Application
#Exec=plank --preferences
#Icon=plank
#Terminal=false
#NoDisplay=false' > /usr/share/applications/Plank-Config.desktop
#mkdir ~/.config/autostart
#nano ~/.config/autostart/Plank.desktop
echo ' '
echo '}{ Conluido! }{'
echo ' '
