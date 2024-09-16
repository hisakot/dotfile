#!/bin/bash

packagelist=(
	"evince"
	"htop"
	"python3"
	"texlive-full"
	"jpegoptim"
)
piplist=(
	"jedi"
	"matplotlib"
	"numpy"
	"rainbow_logging_handler"
	"scipy"
	"google-api-python-client"
	"google-auth-oauthlib"
	"scikit-learn"
	"tqdm"
	"opencv-python"
	"opencv-contrib-python"
	"pandas"
	"tensorflow"
	"tensorboard"
	"tensorboardX"
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
