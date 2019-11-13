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
    figma
    hyper
    google-chrome
    sketch
    slack
    spotify
    timing
    toggl
    visual-studio-code
  )

  brew cask install "${apps[@]}"
