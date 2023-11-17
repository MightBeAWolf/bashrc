#!/bin/bash

if which hx >/dev/null 2>/dev/null; then 
  alias helix='hx'
fi

if which helix >/dev/null 2>/dev/null; then 
  export HELIX_RUNTIME="${HOME}/.config/helix/runtime"
fi

