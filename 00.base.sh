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

