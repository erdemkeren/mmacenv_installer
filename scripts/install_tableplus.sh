#!/usr/bin/env bash
source scripts/helpers.sh

function install_tableplus() {
  ## Define the name of the tool being installed
  toolName="tableplus"

  installationStarted $toolName

  brew install --cask tableplus

  installationSucceed $toolName
}
