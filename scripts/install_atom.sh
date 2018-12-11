#!/usr/bin/env bash
source scripts/helpers.sh

## Define the name of the tool being installed
toolName="Atom"

installationStarted $toolName

mkdir _tmp_
wget https://atom.io/download/mac -O_tmp_/atom-mac.zip
unzip -q -d_tmp_ _tmp_/atom-mac.zip
mv _tmp_/Atom.app /Applications/Atom.app

installationSucceed $toolName
