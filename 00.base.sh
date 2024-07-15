#!/bin/bash

# Configure the bash history
# See `man bash` for more information
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTCONTROL="ignoreboth"
# By default, bash writes its history at the end of each session, overwriting
# the existing file with an updated version. This means that if you are logged
# in with multiple bash sessions, only the last one to exit will have its
# history saved. You can work around this by setting the histappend setting,
# which will append instead of overwriting the history
shopt -s histappend

# Disable annoying the bell notification sound
bind 'set bell-style none'

# When sshing from a remote host into this machine, check to make sure that if
# the TERM env var is set to 'alacritty' that alacritty is also installed on the
# machine. Otherwise set the TERM to the universal 'ansi'. This fixes an issue
# with broken special characters like 'backspace'
if [[ "${TERM}" == "alacritty" ]] && ! command -v alacritty &>/dev/null; then
  export TERM='xterm-256color'
  export COLORTERM='truecolor'
fi

if [[ "${TERM}" == "xterm-kitty" ]] && ! command -v kitty &>/dev/null; then
  export TERM='xterm-256color'
  export COLORTERM='truecolor'
fi
