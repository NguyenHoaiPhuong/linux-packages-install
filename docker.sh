############# Set up the repository #############
# Update apt package
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Use the following command to set up the stable repository. 
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

############# Install Docker Engine - Community #############
# Update the apt package index.
sudo apt-get update

# Install the latest version of Docker Engine - Community and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io

############# Run Docker without sudo #############
# Add the docker group if it doesn't already exist
sudo groupadd docker

# Add the connected user "$USER" to the docker group. Change the user name to match your preferred user if you do not want to use your current user
sudo gpasswd -a $USER docker

# Check docker by running below command
docker run hello-world

# in order to run docker, add below line into ~/.profile ???????
# echo "export DOCKER_HOST=127.0.0.1:2375" >> ~/.profile

# Follow below link for post process after installing docker
# https://docs.docker.com/install/linux/linux-postinstall/