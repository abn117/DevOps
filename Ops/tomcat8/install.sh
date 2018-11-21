#!/bin/bash
apt-get update -y
apt-get install software-properties-common python-software-properties debconf-utils curl -y
add-apt-repository -y ppa:webupd8team/java -y && apt-get update -y
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
apt-get install oracle-java8-installer -y
javac -version
java -version
groupadd tomcat
useradd -s /bin/false -g tomcat -d /opt/tomcat/tomcat8 tomcat
mkdir -p /opt/tomcat/tomcat8
curl -O http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.0.52/bin/apache-tomcat-8.0.52.tar.gz
tar xzvf apache-tomcat-8.0.52.tar.gz -C /opt/tomcat/tomcat8 --strip-components=1
chgrp -R tomcat /opt/tomcat/tomcat8
chmod -R g+r /opt/tomcat/tomcat8/conf
chmod g+x /opt/tomcat/tomcat8/conf/
chown -R tomcat /opt/tomcat/tomcat8/webapps/
chown -R tomcat /opt/tomcat/tomcat8/work/
chown -R tomcat /opt/tomcat/tomcat8/temp/
chown -R tomcat /opt/tomcat/tomcat8/logs/
systemctl daemon-reload
systemctl start tomcat
systemctl status tomcat
