#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="snazzy"

installationStarted $toolName

open contents/snazzy/Snazzy.itermcolors
open contents/snazzy/Snazzy.terminal

installationSucceed $toolName
