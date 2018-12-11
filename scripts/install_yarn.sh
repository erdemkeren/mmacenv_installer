#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="yarn"

installationStarted $toolName

brew install yarn

installationSucceed $toolName
