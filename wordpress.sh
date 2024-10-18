# Update the system
sudo yum update -y

# Install Apache Web Server (httpd)
sudo yum install httpd -y

# Start and enable Apache to run on boot:
sudo systemctl start httpd
sudo systemctl enable httpd

# Install PHP
sudo amazon-linux-extras enable php8.0
sudo yum clean metadata
sudo yum install php php-mysqlnd php-fpm php-json -y


#  Install WordPress
cd /var/www/html
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xvzf latest.tar.gz
sudo rm latest.tar.gz

# Move WordPress files into the current directory
sudo mv wordpress/* .
sudo rmdir wordpress

# Set the correct permissions
sudo chown -R apache:apache /var/www/html
sudo chmod -R 755 /var/www/html

# Copy the default WordPress configuration file:
sudo cp wp-config-sample.php wp-config.php

# Edit the wp-config.php file to update the database settings:
sudo vi wp-config.php

# Modify the following lines to match your RDS configuration
define('DB_NAME', 'your_rds_database_name');
define('DB_USER', 'your_rds_username');
define('DB_PASSWORD', 'your_rds_password');
define('DB_HOST', 'your_rds_endpoint:3306');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

# Restart Apache to apply the changes.
sudo systemctl restart httpd

#  That's it check with your IP
