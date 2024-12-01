#!/bin/bash

if [[ -e "${HOME}/.local/bin/mise" ]]; then
  eval "$("${HOME}/.local/bin/mise" activate bash)"
  if ! command -v usage >/dev/null; then
    mise use -g usage > /dev/null
  fi
  if ! command -v _mise >/dev/null; then
    eval "$(mise completion bash)"
  fi
else
  alias mise="echo 'Install mise using \"curl https://mise.run | sh\"' "
fi
