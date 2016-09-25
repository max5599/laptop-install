#!/bin/bash

sudo apt-get update && sudo apt-get remove openjdk*
if [ ! -d "/opt/java/jdk1.8.0_101" ]; then
	wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz"
	tar -zxvf jdk-8u101-linux-x64.tar.gz
	sudo mkdir -p /opt/java
	sudo mv jdk1.8.0_101 /opt/java
	sudo update-alternatives --install "/usr/bin/java" "java" "/opt/java/jdk1.8.0_101/bin/java" 1
	sudo update-alternatives --set java /opt/java/jdk1.8.0_101/bin/java
	rm -f jdk-8u101-linux-x64.tar.gz
fi
