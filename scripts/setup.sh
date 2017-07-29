# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;

SETUP_TYPE=$1
MY_DIR="$(dirname "$0")"

clear

echo
echo "Setting up a machine..."

source ${MY_DIR}/xcode-license.sh

# Note: Homebrew needs to be set up first
source ${MY_DIR}/homebrew.sh
source ${MY_DIR}/configuration-osx.sh
source ${MY_DIR}/configuration-bash.sh
source ${MY_DIR}/git.sh
source ${MY_DIR}/git-aliases.sh
source ${MY_DIR}/ios.sh
source ${MY_DIR}/java.sh
source ${MY_DIR}/database.sh
source ${MY_DIR}/ruby.sh
source ${MY_DIR}/cloud.sh
source ${MY_DIR}/applications-common.sh
source ${MY_DIR}/image-processing.sh
source ${MY_DIR}/javascript.sh

source ${MY_DIR}/applications-engineer.sh
source ${MY_DIR}/applications-designer.sh

source ${MY_DIR}/configurations.sh

source ${MY_DIR}/finished.sh