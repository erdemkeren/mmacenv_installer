#!/usr/bin/env bash
source scripts/helpers.sh

function install_laravel_installler() {
  ## Define the name of the tool being installed
  toolName="laravel-installler"

  installationStarted $toolName

  composer global require laravel/installer

  installationSucceed $toolName
}
