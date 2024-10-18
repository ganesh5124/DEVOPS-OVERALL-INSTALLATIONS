##### INSTALL MYSQL In amaxon Linux 2023 ######### 

# Download the RPM file
sudo wget https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm 

# Install RPM file
sudo dnf install mysql80-community-release-el9-1.noarch.rpm -y

# You need the public key of mysql to install the software
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023

# If you need to install mysql client:
sudo dnf install mysql-community-client -y

# mysql server
sudo dnf install mysql-community-server -y



