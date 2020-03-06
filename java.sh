#!/bin/bash

# https://linuxize.com/post/install-java-on-ubuntu-18-04/

# echo 'First, update the apt package index with:'
sudo apt update

# echo 'Once the package index is updated install the default Java OpenJDK package with:'
# sudo apt install default-jdk
sudo apt install openjdk-8-jdk

# echo 'Verify the installation, by running the following command which will print the Java version:'
java -version