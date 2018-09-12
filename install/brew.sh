if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
        echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
        return
fi

brew update
brew upgrade

# Install packages 
  apps=(
    bash-completion
    bat
    coreutils
    direnv
    ffmpeg
    fzf
    gifsicle
    git
    grep
    icu4c
    imagemagick
    jpeg
    lame
    node
    python
    ruby
    tldr
    tmux
    vim
    wget
    wifi-password
    yarn
  )

  brew install "${apps[@]}"
