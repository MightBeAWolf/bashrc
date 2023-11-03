#!/bin/bash

if which hx >/dev/null 2>/dev/null; then 
  alias helix='hx'
fi

if which helix >/dev/null 2>/dev/null; then 
  export HELIX_RUNTIME="${HOME}/.config/helix/runtime"
fi

for config_file in "$(dirname "${BASH_SOURCE[0]}")"/configs/helix/*; do 
  if ! [[ -e "${HOME}/.config/helix/$(basename "${config_file}")" ]]; then
    cp -r "${config_file}" "${HOME}/.config/$(basename "${config_file}")"
  fi
done
