#!/bin/bash

if [[ -e "${HOME}/.local/bin/mise" ]]; then
  eval "$("${HOME}/.local/bin/mise" activate bash)"
  if ! command -v usage; then
    mise use -g usage
  fi
  if ! command -v _mise; then
    eval "$(mise completion bash)"
  fi
else
  alias mise="echo 'Install mise using \"curl https://mise.run | sh\"' "
fi
