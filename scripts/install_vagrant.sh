#!/usr/bin/env bash
source scripts/helpers.sh

function install_vagrant() {
  ## Define the name of the tool being installed
  toolName="vagrant"

  installationStarted $toolName

  brew cask install vagrant
#  wget -O_tmp_/vagrant_index_tmp.html https://releases.hashicorp.com/vagrant/
#  VERSION=$(cat _tmp_/vagrant_index_tmp.html | grep -m 1 -o  -E "[0-9]\.[0-9]\.[0-9]" | head -1)
#  rm _tmp_/vagrant_index_tmp.html
#
#  wget -e robots=off -r -nd -P_tmp_ -A dmg --accept-regex "vagrant_.*.dmg" https://releases.hashicorp.com/vagrant/$VERSION/
#  install_dmg _tmp_/$(ls _tmp_ | grep vagrant_$VERSION)

  installationSucceed $toolName
}
