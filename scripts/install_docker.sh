#!/usr/bin/env bash
source scripts/helpers.sh

function install_docker() {
  ## Define the name of the tool being installed
  toolName="docker"

  installationStarted $toolName

  brew install --cask docker

  installationSucceed $toolName
}
