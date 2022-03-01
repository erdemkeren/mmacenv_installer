#!/usr/bin/env bash
source scripts/helpers.sh

function install_alfred() {
  ## Define the name of the tool being installed
  toolName="Raycast"

  installationStarted $toolName

  brew install --cask raycast
  
  applicationConfigured $toolName

  installationSucceed $toolName
}
