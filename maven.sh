sudo yum update -y   # For Amazon Linux 2
# or
sudo dnf update -y   # For Amazon Linux 2023
sudo yum install -y wget tar java-17-amazon-corretto-devel git
cd /tmp
wget https://dlcdn.apache.org/maven/maven-3/3.8.9/binaries/apache-maven-3.8.9-bin.tar.gz
sudo tar -xvzf apache-maven-3.8.9-bin.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.8.9 /opt/maven
echo 'export M2_HOME=/opt/maven' | sudo tee /etc/profile.d/maven.sh
echo 'export PATH=$M2_HOME/bin:$PATH' | sudo tee -a /etc/profile.d/maven.sh
sudo chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version



#please add this below steps in the pom.xml bottom on top of the </project>
<build>
    <plugins>
        <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-war-plugin</artifactId>
            <version>3.4.0</version>  <!-- Works with Maven 3.8.9 -->
        </plugin>
    </plugins>
</build>
