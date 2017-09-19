if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/cask

# Install packages
  apps=(
    alfred
    caret
    dropbox
    firefox
    hyper
    google-chrome
    magnet
    sketch
    slack
    spotify
    toggl
    vscode
    virtualbox
  )

  brew cask install "${apps[@]}"
