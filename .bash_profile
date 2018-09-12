# Add `~/bin` to the `$PATH`
  export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
 for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"; 
 done;
 unset file;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi

# Make Tab autocomplete regardless of filename case
set completion-ignore-case on
   
# Set Vim as base text editor
export EDITOR="/usr/bin/vim"

### TERMINAL COMMANDS/ALIASES
# Quick Source
alias ...='source ~/.bash_profile'
# bat > cat
alias cat=bat
# better reverse search (ctrl+r)
alias preview="fzf --preview 'bat--color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
# Jekyll
alias jstart='bundle exec jekyll serve'
alias be='bundle exec'

# Timestamp
timestamp() {
  date +"%Y%m%d%H%M%S" | pbcopy
}

# Video/Image Editing
compressMP4 () {
  ffmpeg -i $1 -vcodec h264 $2
  echo -e "compression complete. \n$2 created." 
}

firstFrame () {
  ffmpeg -i $1 -vf "select=eq(n\,0)" $2.jpg
  echo -e "created $2.jpg"
}

movToMP4() {
  ffmpeg -i $1 -vcodec copy -acodec copy $2.mp4
  echo -e "\n$1 converted to MP$"
}

### GIT THINGS
# Git Completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Use direnv for env vars
eval "$(direnv hook bash)"
