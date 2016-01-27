#!/bin/bash

#be a super user
sudo su

# update the packages
dnf update

# gnome-tweak-tool for desktop env
dnf install gnome-tweak-tool

#  Enable Google YUM repository for google Chrome
cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF

## Install Google Chrome Stable version ##
## Fedora 23/22 ##
dnf install google-chrome-stable
 
## Fedora 21/20/19/18 and CentOS/RHEL 7.2 ##
yum install google-chrome-stable

#Google provides its own repository from where you can install Google software such as Google Earth, Google Music manager and others
gedit /etc/yum.repos.d/google-chrome.repo

# Activate rpm fusion repo
## The RPMFusion provides some free and non-free software for Fedora
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm

# Install Feddy tool to download most used apps like skype, chrome etc 
curl http://folkswithhats.org/fedy-installer -o fedy-installer && chmod +x fedy-installer && ./fedy-installer

#install VLC, The VLC package is included in the RPMFusion repository 
dnf install vlc

#install a light weight Dock
dnf install docky

#install rar and zip utilities
dnf install unrar p7zip

#install Spotify
dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
dnf install spotify-client
