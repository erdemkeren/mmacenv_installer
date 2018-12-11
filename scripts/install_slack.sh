#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="slack"

installationStarted $toolName

wget https://slack.com/ssb/download-osx -O_tmp_/slack-mac.dmg
install_dmg _tmp_/slack-mac.dmg

installationSucceed $toolName
