# Alias definitions for common commands
if command -v exa >/dev/null 2>&1; then
  alias ls='exa'
elif command -v eza >/dev/null 2>&1; then
  alias ls='eza'
fi

if command -v dust >/dev/null 2>&1; then
  alias du='dust'
fi

if command -v bat >/dev/null 2>&1; then
  alias cat='bat -ppp'
fi

alias grep='grep --color=auto'
