#!/bin/bash

sudo -su

# Install git
zypper install git

# install vim and remove emacs
zypper in vim -emacs 
