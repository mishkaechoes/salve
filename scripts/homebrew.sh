echo

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo
echo "Ensuring you have the latest Homebrew..."
brew update --verbose

echo
echo "Ensuring your Homebrew directory is writable..."
sudo chown -R $(whoami) /usr/local/bin

echo
echo "Installing Homebrew services..."
brew tap homebrew/services --verbose

echo
echo "Adding Pivotal tap to Homebrew"
brew tap pivotal/tap --verbose

echo
echo "Upgrading existing brews..."
brew upgrade --verbose

echo "Cleaning up your Homebrew installation..."
brew cleanup --verbose

echo
echo "Adding Homebrew's sbin to your PATH..."
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile
