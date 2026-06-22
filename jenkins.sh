######### Active JENKINS Script #########
######## JENKINS DOWNLOAD METHOD-2 ########

#------------ Install Java 21 (Required for Jenkins 2.555.3) ------------
sudo yum install -y java-21-amazon-corretto

# Verify Java installation
java --version

#------------ Add Jenkins Repository ------------
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#------------ Install Jenkins ------------
sudo yum install -y jenkins

#------------ Enable and Start Jenkins ------------
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

#------------ Verify Jenkins Status ------------
sudo systemctl status jenkins --no-pager

#------------ Get Initial Admin Password ------------
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
