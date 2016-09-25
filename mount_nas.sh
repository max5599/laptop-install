#!/bin/bash

sudo apt-get install nfs-common
echo 'Mounting nas in ~/NAS'
if [ ! -d "$HOME/NAS/video" ]; then
	mkdir -p "$HOME/NAS/video"
	echo "192.168.0.51:/volume1/video	$HOME/NAS/video	nfs	defaults" | sudo tee --append /etc/fstab
fi
if [ ! -d "$HOME/NAS/save" ]; then
	mkdir -p "$HOME/NAS/save"
	echo "192.168.0.51:/volume1/save	$HOME/NAS/save	nfs	defaults" | sudo tee --append /etc/fstab
fi
if [ ! -d "$HOME/NAS/downloads" ]; then
	mkdir -p "$HOME/NAS/downloads"
	echo "192.168.0.51:/volume1/downloads	$HOME/NAS/downloads	nfs	defaults" | sudo tee --append /etc/fstab
fi
if [ ! -d "$HOME/NAS/photo" ]; then
	mkdir -p "$HOME/NAS/photo"
	echo "192.168.0.51:/volume1/photo	$HOME/NAS/photo	nfs	defaults" | sudo tee --append /etc/fstab
fi
sudo mount -a
