# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Write history before accepting a new command
# Then read back the merged list
export PROMPT_COMMAND='_xtitle; history -a; history -c; history -r'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# disable XON/XOFF flow control (^s/^q)
stty -ixon

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Load bash files
. ~/.dotfiles/functions.sh
. ~/.dotfiles/env.sh
. ~/.dotfiles/config.sh
. ~/.dotfiles/aliases.sh
. ~/.dotfiles/completions.sh
. ~/.dotfiles/prompt.sh
. ~/.dotfiles/input.sh

eval "$(direnv hook bash)"
