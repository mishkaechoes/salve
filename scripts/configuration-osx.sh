echo
echo 'Customizing OS X configuration'

# set menu clock
# see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm:ss a'
killall SystemUIServer

# change save directory for screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots/

# show hidden files
defaults write com.apple.finder AppleShowAllFiles true

# enable hide option in the dock 
defaults write com.apple.Dock show hidden -boolean yes

# hide the dock
defaults write com.apple.dock autohide -bool true

# enable recent applications in the dock
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

defaults write com.apple.dock use-new-list-stack -bool YES;
defaults write com.apple.dashboard mcx-disabled -boolean yes;
defaults write com.apple.dashboard demoed yes
defaults write com.apple.finder QLEnableXRayFolders 1;
defaults write com.apple.dock mouse-over-hilite-stack -boolean yes;
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';

sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Science, my lad, is made up of mistakes, but they are mistakes which it is useful to make, because they lead little by little to the truth. - Jules Verne"

killall Dock

# fast key repeat rate, requires reboot to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15

# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
#to revert use defaults -currentHost delete com.apple.ImageCapture disableHotPlug