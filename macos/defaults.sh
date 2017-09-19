# Close any open System Preferences panes, to prevent them from overriding settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished 
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string “$HOME/Desktop”

# Save screenshots in JPG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string “jpg”

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=” “
