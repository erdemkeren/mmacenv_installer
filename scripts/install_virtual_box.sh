#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="virtualbox"

installationStarted $toolName

VERSION=$(wget https://download.virtualbox.org/virtualbox/LATEST-STABLE.TXT -O -)
wget -e robots=off -r -nd -A dmg --accept-regex "VirtualBox\-.*\-OSX\.dmg" https://download.virtualbox.org/virtualbox/$VERSION/
install_dmg _tmp_/$(ls _tmp_ | grep VirtualBox)

installationSucceed $toolName
