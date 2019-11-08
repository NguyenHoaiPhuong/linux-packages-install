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