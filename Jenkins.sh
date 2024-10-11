########.      Step 1: Install Java on Ubuntu
sudo apt update
sudo apt sudo apt install openjdk-8-jdk
#  Alternatively, install version 11:
sudo apt install openjdk-11-jdk -y

# Step 2: Add the repository key to the system:

sudo apt wget -q -O - https://pkg.jenkins.io/debianstable/jenkins.io.key | sudo apt-key add -

# Step 3: Once the key is added with no errors, append the Debian package repository address
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stablebinary/ > /etc/apt/sources.list.d/jenkins.list'

# Step 4: Run update to use new repository
sudo apt update

# Step 5: Install Jenkins
sudo apt install jenkins

# After successful installation let us start Jenkins
sudo systemctl start jenkins

# Check the jenkins status
sudo systemctl status jenkins

# Enabling jenkins service in booting time
sudo systemctl enable jenkins


##### Jenkins installation in Amazon Linux

#!/bin/bash
# update yum 
sudo yum update –y

# used to add jenkins repo in yum 
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import rm key 
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# update yum 
sudo yum upgrade

# Install java for jenkins (prerequisite)
sudo dnf install java-17-amazon-corretto -y

# Install jenkins
sudo yum install jenkins -y

# Enable jenkins 
sudo systemctl enable jenkins

# Check jenkins status
sudo systemctl status jenkins

# start the jenkins
sudo systemctl start jenkins






