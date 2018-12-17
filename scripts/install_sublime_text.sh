#!/usr/bin/env bash
source scripts/helpers.sh

function install_sublime_text() {
  ## Define the name of the tool being installed
  toolName="sublime-text"

  installationStarted $toolName

  brew cask install sublime-text

  installationSucceed $toolName
}
