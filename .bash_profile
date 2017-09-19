# Add `~/bin` to the `$PATH`
  export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
 for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
         [ -r "$file" ] && [ -f "$file" ] && source "$file"; 
 done;
 unset file;

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
