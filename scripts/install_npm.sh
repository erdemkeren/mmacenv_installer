#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="npm"

installationStarted $toolName

brew install npm

installationSucceed $toolName
