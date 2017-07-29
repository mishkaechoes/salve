# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing Designer applications"

# Graphic editing tools

brew cask install adobe-creative-cloud
brew cask install sketch
brew cask install google-drive
brew cask install coda
brew cask install principle
brew cask install screenhero
bres cask install balsamiq-mockups
brew cask install invisionsync

# Screen recording tools



set -e
