#!/usr/bin/env bash
source scripts/helpers.sh

function install_toptracker() {
  ## Define the name of the tool being installed
  toolName="toptracker"

  installationStarted $toolName

  wget -O_tmp_/TopTracker_Latest.dmg https://tracker-api.toptal.com/desktop/latest/mac
  install_dmg _tmp_/TopTracker_latest.dmg

  installationSucceed $toolName
}
