#!/bin/sh
alias reload!='exec "$SHELL" -l'

# 'rm' will prompt once before
#  - removing more than three files.
#  - removing recursively.
alias rm='rm -I'

# Replace 'ls' with exa if it is available.
if command -v exa >/dev/null 2>&1; then
    alias ls="exa --git --color=automatic"
    alias ll="exa --all --long --git --color=automatic"
    alias la="exa --all --binary --group --header --long --git --color=automatic"
    alias l="exa --git --color=automatic"
fi
