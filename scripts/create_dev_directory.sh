#!/usr/bin/env bash
source scripts/helpers.sh

function create_dev_directory() {
  ## Define the name of the tool being installed
  toolName="devfsh"

  installationStarted $toolName

  [ -d ~/dev ] && mv ~/dev ~/devorg
  cp -R contents/devfsh ~/dev

  installationSucceed $toolName
}
