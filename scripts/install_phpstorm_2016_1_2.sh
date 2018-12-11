#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="PhpStorm-2016.1.2"

installationStarted $toolName

wget http://download.jetbrains.com/webide/PhpStorm-2016.1.2.dmg -O_tmp_/PhpStorm-2016.1.2.dmg
install_dmg_rename _tmp_/PhpStorm-2016.1.2.dmg PhpStorm "PhpStorm-2016.1.2"

installationSucceed $toolName
