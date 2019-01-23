#!/usr/bin/env bash
source scripts/helpers.sh

function install_imageoptim() {
    ## Define the name of the tool being installed
    toolName="ImageOptim"

    installationStarted $toolName

    brew cask install imageoptim

    installationSucceed $toolName
}
