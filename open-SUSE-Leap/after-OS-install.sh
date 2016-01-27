#!/bin/bash

#Become a super user before installing
sudo -su

#1. Packman community Repo
zypper ar -f -n packman http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Leap_42.1/ packman

#2 Install VLC player
sudo zypper install vlc vlc-codecs

#3 update everything
zipper update

#4 Install Google Chrome
wget https://dl.google.com/linux/linux_signing_key.pub
#     Import the key
sudo rpm --import linux_signing_key.pub

echo "Download chrome rpm from net"
echo "sudo zypper install /PATH_OF_GOOGLE_CHROME.rpm"
