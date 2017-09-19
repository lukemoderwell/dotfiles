# Git Completion
  if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
  fi

# Add tab completion for many Bash commands
  if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
          source "$(brew --prefix)/share/bash-completion/bash_completion";
  elif [ -f /etc/bash_completion ]; then
          source /etc/bash_completion;
  fi

# Make Tab autocomplete regardless of filename case
  set completion-ignore-case on
  
# Path  
export PATH="/usr/local/sbin:$PATH"
