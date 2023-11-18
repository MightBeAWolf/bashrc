if command -v bat >/dev/null 2>&1; then
  export PAGER="$(command -v bat)"
  export MANPAGER="sh -c 'col -bx | $(command -v $editor) -l man -p'"
fi
