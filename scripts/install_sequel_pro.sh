#!/usr/bin/env bash
source scripts/helpers.sh

function install_sequel_pro() {
  ## Define the name of the tool being installed
  toolName="sequel-pro"

  installationStarted $toolName

  brew cask install sequel-pro

  installationSucceed $toolName
}
