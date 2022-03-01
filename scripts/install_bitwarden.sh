#!/usr/bin/env bash
source scripts/helpers.sh

function install_bitwarden() {
  ## Define the name of the tool being installed
  toolName="bitwarden"

  installationStarted $toolName

  brew install --cask bitwarden
  brew install bitwarden-cli

  installationSucceed $toolName
}
