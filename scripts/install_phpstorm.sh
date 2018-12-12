#!/usr/bin/env bash
source scripts/helpers.sh

function install_phpstorm() {
  ## Define the name of the tool being installed
  toolName="PhpStorm"

  installationStarted $toolName

  brew cask install phpstorm

  mkdir ~/Library/Preferences/PhpStorm2016.1/codestyles
  cp contents/phpstorm/Laravel.xml ~/Library/Preferences/PhpStorm2016.1/codestyles

  mkdir ~/Library/Preferences/PhpStorm2016.1/colors
  cp contents/phpstorm/pure.icls ~/Library/Preferences/PhpStorm2016.1/colors

  cp contents/phpstorm/Sublimeish.xml ~/Library/Preferences/PhpStorm2016.1/keymaps

  echo ">>> import contents/phpstorm/settings.jar from File | Import Settings manually."

  applicationConfigured $toolName

  installationSucceed $toolName
}
