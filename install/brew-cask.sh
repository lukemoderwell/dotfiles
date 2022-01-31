if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/cask

# Install packages
  apps=(
    airtable
    alfred
    coconutbattery
    figma
    firefox
    google-chrome
    iterm2
    lastpass
    loom
    obsidian
    sip
    smallpdf
    slack
    spotify
    toggl-track
    visual-studio-code
  )

  brew install --cask "${apps[@]}"
