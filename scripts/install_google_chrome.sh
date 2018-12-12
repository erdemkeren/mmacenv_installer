#!/usr/bin/env bash
source scripts/helpers.sh

function install_vagrant() {
  ## Define the name of the tool being installed
  toolName="google-chrome"

  installationStarted $toolName

  brew cask install google-chrome

  installationSucceed $toolName
}
