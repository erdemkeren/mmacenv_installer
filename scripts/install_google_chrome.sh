#!/usr/bin/env bash
source scripts/helpers.sh

function install_google_chrome() {
  ## Define the name of the tool being installed
  toolName="google-chrome"

  installationStarted $toolName

  brew install --cask google-chrome

  installationSucceed $toolName
}
