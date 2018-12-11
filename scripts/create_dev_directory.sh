#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="devfsh"

installationStarted $toolName

mkdir ~/dev
cp -r contents/devfsh ~/dev

installationSucceed $toolName
