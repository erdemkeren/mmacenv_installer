#!/usr/bin/env bash
source scripts/helpers.sh

function install_wget() {
  ## Define the name of the tool being installed
  toolName="wget"

  installationStarted $toolName

  brew install wget

  installationSucceed $toolName
}
