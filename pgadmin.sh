# Import the repository key
# sudo apt-get install curl ca-certificates
# curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

sudo apt update
sudo apt install pgadmin4 pgadmin4-apache2 -y

# To run pgadmin
# pgadmin4