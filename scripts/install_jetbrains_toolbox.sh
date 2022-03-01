#!/usr/bin/env bash
source scripts/helpers.sh

function install_jetbrains_toolbox() {
  ## Define the name of the tool being installed
  toolName="Jetbrains Toolbox"

  installationStarted $toolName

  brew install --cask jetbrains-toolbox

  installationSucceed $toolName
}
