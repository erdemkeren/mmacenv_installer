#!/usr/bin/env bash
source scripts/helpers.sh

function install_redis() {
  ## Define the name of the tool being installed
  toolName="redis"

  installationStarted $toolName

  brew install redis

  installationSucceed $toolName
}
