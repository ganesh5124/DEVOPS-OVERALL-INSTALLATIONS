##### Sonarqube Installations in Amazon Linux

# Install java 1.8 or related version
yum install -y java-1.8.0

# Add sonar repo to yum Repos
sudo wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo

# Install sonar
sudo yum install sonar -y

# Start the service
service sonar start
