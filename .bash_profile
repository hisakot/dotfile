#!bin/bash
# ~/.bash_profile: executed by the command interpreter for login shells.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# xmodmap
# if [ -f "$HOME/.Xmodmap" ]; then
#     xmodmap $HOME/.Xmodmap
# fi
# xmodmap | grep "Eisu_toggle" | grep "lock" > /dev/null 2>&1
# if [ $? = 0 ]; then
#     xmodmap $HOME/.Xmodmap
# fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
