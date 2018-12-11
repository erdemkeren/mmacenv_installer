#!/usr/bin/env bash
source scripts/helpers.sh

function install_pure_prompt() {
  ## Define the name of the tool being installed
  toolName="pure-prompt"

  installationStarted $toolName

  npm install pure-prompt

  installationSucceed $toolName
}
