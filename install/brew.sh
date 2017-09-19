if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
        echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
        return
fi

brew update
brew upgrade

# Install packages 
  apps=(
    bash-completion
    bats
    coreutils
    ffmpeg
    gifsicle
    git
    grep
    icu4c
    imagemagick
    node
    python
    ruby
    vim
    wget
    wifi-password
    yarn
  )

  brew install "${apps[@]}"
