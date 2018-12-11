#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="Homebrew"

installationStarted $toolName

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

installationSucceed $toolName
