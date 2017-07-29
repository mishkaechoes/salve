# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities
brew cask install flycut
brew cask install dash
brew cask install postman
brew install the_silver_searcher

# Terminals

brew cask install iterm2

# Browsers

brew cask install google-chrome

# Communication

brew cask install slack
brew cask install skype

# Text Editors
brew cask install macvim

# Add Visual Studio Code (code)
brew cask install visual-studio-code --verbose
cat << EOF >> ~/.bash_profile
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

set -e

echo "Setting scutil HostName"
hostname | cut -d . -f 1 | sudo scutil --set HostName 
