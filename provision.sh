sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install postgresql-8.4
sudo echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/8.4/main/pg_hba.conf
sudo echo "listen_addresses = '*'" >> /etc/postgresql/8.4/main/postgresql.conf
sudo systemctl restart postgresql
