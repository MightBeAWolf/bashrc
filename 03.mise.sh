#!/bin/bash

if [[ -e "${HOME}/.local/bin/mise" ]]; then
  eval "$(/home/gwolf/.local/bin/mise activate bash)"
fi
