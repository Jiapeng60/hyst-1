#!/bin/bash
set -e
# This script will download and install Hyst in /hyst and all relevant tools in /tools.
#
# To run this script without download, run the following command in a terminal:
# TODO set the correct URL and branch here
# wget -q -O download.sh https://raw.githubusercontent.com/MaxGaukler/hyst/dev/download_and_install_on_ubuntu_18_04.sh && bash download.sh
sudo apt-get update
sudo apt-get -qy install git
cd ~
rm -rf ./hyst-temp
# TODO set the correct URL and branch here
git clone https://github.com/MaxGaukler/hyst hyst-temp --branch=dev --recurse-submodules 
cd hyst-temp
sudo -H ./install_on_ubuntu_18_04.sh

sudo chown -R $USER "${HYST_PREFIX}/tools"
sudo chown -R $USER "${HYST_PREFIX}/hyst"
cd ..
rm -rf ./hyst-temp
