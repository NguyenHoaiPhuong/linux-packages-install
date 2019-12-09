# Step 1 – Prerequsitis
# As you are going to install Python 3.8 from the source.
# You need to install some development libraries to compile Python source code.
# Use the following command to install prerequisites for Python

sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

# Step 2 – Download Python 3.8
cd /opt
sudo wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
sudo tar xzf Python-3.8.0.tgz

# Step 3 – Compile Python Source
cd Python-3.8.0
sudo ./configure --enable-optimizations
sudo make altinstall

# Step 4 – Check Python Version
python3.8 -V

# After successful installation remove the downloaded archive to save disk space
cd /opt
sudo rm -f Python-3.8.0.tgz

echo "alias python=python3.8" >> ~/.bashrc
