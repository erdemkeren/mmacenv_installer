#!/usr/bin/env bash
source scripts/helpers.sh

function install_drawio() {
  ## Define the name of the tool being installed
  toolName="drawio"

  installationStarted $toolName

  brew install --cask drawio

  installationSucceed $toolName
}
