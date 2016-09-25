#!/bin/bash

wget --no-cookies --no-check-certificate "https://download-cf.jetbrains.com/idea/ideaIU-2016.2.4.tar.gz"
tar xfz ideaIU-2016.2.4.tar.gz
rm -f ideaIU-2016.2.4.tar.gz
sudo mkdir /opt
sudo mv idea-IU* /opt/
cd /opt/idea-IU*/bin
./idea.sh
cd -

