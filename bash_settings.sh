# bash/zsh settings common to both shells

append_path() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1:$PATH" ;;
    esac
}

append_path "$HOME/bin"
append_path "$HOME/.local/bin"

if [ -n "$ZSH_VERSION" ]; then
    precmd () { __git_ps1 "%n" ":%~$ " "|%s"; }
elif [ -n "$BASH_VERSION" ]; then
    PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
fi

GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM=false
GIT_PS1_DESCRIBE_STYLE=branch
GIT_PS1_SHOWDIRTYSTATE=false
GIT_PS1_SHOWSTASHSTATE=false
GIT_PS1_SHOWUNTRACKEDFILES=true

alias ll='ls -l'
alias la='ls -l -a'