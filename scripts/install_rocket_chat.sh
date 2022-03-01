#!/usr/bin/env bash
source scripts/helpers.sh

function install_rocket_chat() {
  ## Define the name of the tool being installed
  toolName="rocket-chat"

  installationStarted $toolName

  brew install --cask rocket-chat

  installationSucceed $toolName
}
