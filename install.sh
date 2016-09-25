#!/bin/bash

read -p "Do you want to mount the NAS?" yn
case $yn in
	[Yy]* ) ./mount_nas.sh;;
	* ) echo "No !";;
esac

read -p "Do you want to install kodi?" yn
case $yn in
	[Yy]* ) ./install_kodi.sh;;
	* ) echo "No !";;
esac

read -p "Do you want to install jdk8?" yn
case $yn in
	[Yy]* ) ./install_jdk8.sh;;
	* ) echo "No !";;
esac

read -p "Do you want to install chrome?" yn
case $yn in
	[Yy]* ) ./install_chrome.sh;;
	* ) echo "No !";;
esac

read -p "Do you want to install intellij?" yn
case $yn in
	[Yy]* ) ./install_intellij.sh;;
	* ) echo "No !";;
esac

read -p "Do you want to install git?" yn
case $yn in
	[Yy]* ) ./install_git.sh;;
	* ) echo "No !";;
esac
