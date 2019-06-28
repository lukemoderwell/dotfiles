if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/cask

# Install packages
  apps=(
    airtable
    alfred
    caret
    dropbox
    firefox
    hyper
    google-chrome
    sketch
    slack
    spotify
    toggl
    visual-studio-code
  )

  brew cask install "${apps[@]}"
