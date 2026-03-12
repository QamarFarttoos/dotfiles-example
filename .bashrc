# ~/.bashrc
# Custom Bash configuration

# Add custom directories to PATH
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Load git prompt if available
if [ -f "$HOME/.git-prompt.sh" ]; then
    source "$HOME/.git-prompt.sh"
fi

# Enable git branch in prompt
export PS1='\u@\h:\w$(__git_ps1 " (%s)")\$ '

# Useful aliases
alias ll="ls -la"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git pull"

# History settings
HISTSIZE=1000
HISTFILESIZE=2000