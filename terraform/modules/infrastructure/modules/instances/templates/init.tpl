#!/bin/bash

echo "Update apt"
echo
sudo apt-get update

echo "Set the hostname"
echo
sudo sed -i /etc/hosts -e "s/^127.0.0.1 localhost$/127.0.0.1 localhost $(hostname)/"

echo "Install mysql client"
echo
sudo apt-get install mysql-client -y

echo "Install nvm and install the latest stable version of NodeJS"
echo
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
. ~/.nvm/nvm.sh
nvm install stable
nvm alias default stable

sudo rm /usr/bin/node
sudo ln -s /home/ubuntu/.nvm/versions/node/v9.9.0/bin/node /usr/bin/node

echo "Install nginx for serving simple static files"
echo
sudo apt-get install nginx -y
sudo service nginx enable
sudo service nginx start

echo "Create www folder and index.html file"
echo
sudo rm index.html
sudo rm -rf /home/ubuntu/www/
sudo mkdir -p /home/ubuntu/www/instance-status/

echo "Create an get instance IP file"
echo
export INSTANCE_IP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

echo "Check db connection and save DB time"
echo
export MYSQL_PWD=${db_password}
export DB_NOW=$(mysql --host=${db_endpoint} --port=${db_port} --database=${db_name} --user=${db_username} -e 'SELECT NOW();' | tr -d 'NOW()\n')

echo "This is being served by: $INSTANCE_IP" >> /home/ubuntu/index.html
echo "</br>" >> /home/ubuntu/index.html
echo "This instance connected to the database at: $DB_NOW" >> /home/ubuntu/index.html

sudo cp index.html /home/ubuntu/www/instance-status/index.html
sudo chmod -R 755 www

echo "Configure Nginx"
echo
sudo rm /etc/nginx/sites-available/instance-status
sudo cp instance-status.conf /etc/nginx/sites-available/instance-status
sudo rm /etc/nginx/sites-enabled/instance-status
sudo ln -s /etc/nginx/sites-available/instance-status /etc/nginx/sites-enabled/instance-status

echo "Restart nginx to apply changes"
echo
sudo service nginx restart
