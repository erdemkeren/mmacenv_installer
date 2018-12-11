#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="snazzy"

installationStarted $toolName

open contents/iterm2-snazzy/Snazzy.itermcolors
open contents/iterm2-snazzy/Snazzy.terminal

installationSucceed $toolName
