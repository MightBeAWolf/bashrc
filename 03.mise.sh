#!/bin/bash

if [[ -e "${HOME}/.local/bin/mise" ]]; then
  eval "$("${HOME}/.local/bin/mise" activate bash)"
else
  alias mise="echo 'Install mise using \"curl https://mise.run | sh\"' "
fi
