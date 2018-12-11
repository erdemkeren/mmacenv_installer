#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="pure-prompt"

installationStarted $toolName

npm install pure-prompt

installationSucceed $toolName
