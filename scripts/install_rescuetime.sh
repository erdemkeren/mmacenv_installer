#!/usr/bin/env bash
source scripts/helpers.sh

function install_rescuetime() {
  ## Define the name of the tool being installed
  toolName="rescuetime"

  installationStarted $toolName

  wget -P_tmp_ https://www.rescuetime.com/installers/RescueTimeInstaller.pkg
  install_pkg _tmp_/RescueTimeInstaller.pkg

  installationSucceed $toolName
}
