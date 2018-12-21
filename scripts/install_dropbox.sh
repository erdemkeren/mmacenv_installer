#!/usr/bin/env bash
source scripts/helpers.sh

function install_dropbox() {
  ## Define the name of the tool being installed
  toolName="dropbox"

  installationStarted $toolName

  brew cask install dropbox

  installationSucceed $toolName
}
