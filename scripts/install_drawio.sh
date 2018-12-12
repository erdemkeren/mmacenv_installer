#!/usr/bin/env bash
source scripts/helpers.sh

function install_vagrant() {
  ## Define the name of the tool being installed
  toolName="drawio"

  installationStarted $toolName

  brew cask install drawio

  installationSucceed $toolName
}
