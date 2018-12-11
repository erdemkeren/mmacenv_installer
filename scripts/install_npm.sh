#!/usr/bin/env bash
source scripts/helpers.sh

function install_npm() {
  ## Define the name of the tool being installed
  toolName="npm"

  installationStarted $toolName

  brew install npm

  installationSucceed $toolName
}
