sudo apt-get --yes --force-yes install ufw 

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow https
sudo ufw allow http
sudo ufw allow from 210.107.0.0/24

if [ $(whoami) = "lovelace" ] ; then
        echo "user $(whoami)"
	sudo ufw allow ssh
	sudo ufw allow ftp
else
        echo "user $(whoami) is not lovelcace"
	
fi

sudo ufw enable 
sudo ufw status verbose
