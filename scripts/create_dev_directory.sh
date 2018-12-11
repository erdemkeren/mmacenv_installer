#!/usr/bin/env bash
source scripts/helpers.sh

function create_dev_directory() {
  ## Define the name of the tool being installed
  toolName="devfsh"

  installationStarted $toolName

  mkdir ~/dev
  cp -r contents/devfsh ~/dev

  installationSucceed $toolName
}
