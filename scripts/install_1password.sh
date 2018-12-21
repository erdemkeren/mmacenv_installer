#!/usr/bin/env bash
source scripts/helpers.sh

function install_1password() {
  ## Define the name of the tool being installed
  toolName="1password"

  installationStarted $toolName

  brew cask install 1password
  brew cask install 1password-cli

  installationSucceed $toolName
}
