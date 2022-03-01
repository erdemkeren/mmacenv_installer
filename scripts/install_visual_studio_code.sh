#!/usr/bin/env bash
source scripts/helpers.sh

function install_visual_studio_code() {
  ## Define the name of the tool being installed
  toolName="visual-studio-code"

  installationStarted $toolName

  brew install --cask visual-studio-code

  installationSucceed $toolName
}
