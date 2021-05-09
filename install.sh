#!/bin/bash

packagelist=(
	"evince"
	"htop"
	"python3"
	"texlive-full"
	"jpegoptim"
)
piplist=(
	"matplotlib"
	"numpy"
	"rainbow_logging_handler"
	"scipy"
	"google-api-python-client"
	"google-auth-oauthlib"
)

echo "start apt-get install"
for package in ${packagelist[@]}; do
	sudo apt-get install ${list}
done

echo "start sudo pip3 install"
for list in ${piplist[@]}; do
	sudo pip3 install ${list}
done

sudo apt-get update
sudo apt-get upgrade
