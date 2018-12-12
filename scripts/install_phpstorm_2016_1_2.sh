#!/usr/bin/env bash
source scripts/helpers.sh

function install_phpstorm_2016_1_2() {
  ## Define the name of the tool being installed
  toolName="PhpStorm-2016.1.2"

  installationStarted $toolName

  wget http://download.jetbrains.com/webide/PhpStorm-2016.1.2.dmg -O_tmp_/PhpStorm-2016.1.2.dmg
  install_dmg_rename _tmp_/PhpStorm-2016.1.2.dmg PhpStorm "PhpStorm-2016.1.2"

  mkdir ~/Library/Preferences/PhpStorm2016.1/codestyles
  cp contents/phpstorm_2016_1_2/Laravel.xml ~/Library/Preferences/PhpStorm2016.1/codestyles

  mkdir ~/Library/Preferences/PhpStorm2016.1/colors
  cp contents/phpstorm_2016_1_2/pure.icls ~/Library/Preferences/PhpStorm2016.1/colors
  applicationConfigured $toolName

  installationSucceed $toolName
}
