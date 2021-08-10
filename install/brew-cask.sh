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
    lastpass
    loom
    miro
    obsidian
    postman
    sip
    smallpdf
    slack
    spotify
    toggl
    visual-studio-code
  )

  brew install --cask "${apps[@]}"
