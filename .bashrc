# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# ==============================
# History
# ==============================

HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# Save history instantly
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ==============================
# Completion
# ==============================

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# ==============================
# Prompt
# ==============================

# Plain ANSI colors (no bold) so the terminal's Noctalia palette applies;
# 90 = bright black, used to mute the separators.
PS1='\[\e[32m\]\u\[\e[90m\]@\[\e[33m\]\h\[\e[90m\]:\[\e[34m\]\w\[\e[90m\]\$\[\e[0m\] '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
esac

# ==============================
# Navigation shortcuts
# ==============================

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Go home quickly
alias ~='cd ~'

# eza instead of ls
# Kanagawa file colors via ANSI indexes, so the Noctalia palette applies:
# dirs blue, exec bright green, links bright cyan, media magenta,
# archives bright yellow.
export EZA_COLORS='di=34:ex=92:ln=96:im=35:vi=35:mu=35:lo=35:cm=93'
alias ls='eza --color=auto --group-directories-first'
alias ll='eza -la --icons'
alias tree='eza --tree'

# ==============================
# Colored grep
# ==============================

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# ==============================
# Useful shortcuts
# ==============================

alias cls='clear'
alias reload='source ~/.bashrc'
alias lg='lazygit'

# ==============================
# Zoxide (smart cd, shows dir after change)
# ==============================

eval "$(zoxide init bash)"

cd() {
    z "$@" && ls
}
alias zi='zoxide query -i'

echo "Welcome $(whoami) — $(date)"

# ==============================
# Toolchains & PATH
# ==============================

[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Added by Antigravity CLI installer
export PATH="$HOME/.local/bin:$PATH"

# >>> grok installer >>>
export PATH="$HOME/.grok/bin:$PATH"
[[ -r "$HOME/.grok/completions/bash/grok.bash" ]] && source "$HOME/.grok/completions/bash/grok.bash"
# <<< grok installer <<<

# opencode
export PATH="$HOME/.opencode/bin:$PATH"
