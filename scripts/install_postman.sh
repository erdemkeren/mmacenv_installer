#!/usr/bin/env bash
source scripts/helpers.sh

function install_postman() {
  ## Define the name of the tool being installed
  toolName="postman"

  installationStarted $toolName

  brew cask install postman

  installationSucceed $toolName
}
