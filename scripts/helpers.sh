function installationStarted() {
  echo ">>> Installing $1"
}

function installationSucceed() {
  echo ">>> $1 has been installed successfully."
}

function applicationConfigured() {
  echo ">>> $1 has been configured successfully."
}

function install_dmg() {
  VOLUME=`hdiutil attach $1 | grep Volumes | awk '{print $3}'`
  if [ -e "$VOLUME/*.app" ]; then
    sudo cp -rf $VOLUME/*.app /Applications
  elif [ -e "$VOLUME/*.pkg" ]; then
    PACKAGE=$(ls $VOLUME | grep .pkg | head -1)
    sudo installer -pkg "$VOLUME/$PACKAGE" -target /
  fi
  hdiutil detach $VOLUME
}

function install_dmg_rename() {
  VOLUME=`hdiutil attach $1 | grep Volumes | awk '{print $3}'`
  sudo cp -R $VOLUME/$2.app /Applications/$3.app
  hdiutil detach $VOLUME
}
