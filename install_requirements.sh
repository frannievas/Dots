#! /bin/bash
# After install run this script. It will install everithing you need

sudo apt-get update
sudo apt-get upgrade

# Brings the PPA back!
sudo apt install software-properties-common


# Propietary audio codecs
sudo apt install ubuntu-restricted-extras
# Libav
sudo apt install libavcodec-extra
# For playing DVD
sudo apt install libdvd-pkg

# Elementary tweaks
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-get update
sudo apt-get install elementary-tweaks

# Programs
sudo apt-get install vlc
sudo apt-get install deluge
sudo apt-get install vim git
