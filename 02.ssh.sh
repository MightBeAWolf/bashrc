
if [[ -e ~/.1password/agent.sock ]]; then
  export SSH_AUTH_SOCK="${HOME}/.1password/agent.sock"
elif  command -v keychain >/dev/null 2>&1; then
  # Initialize the keychain, if available
  # Make sure there is a user ~/.local dir
  mkdir -p "${HOME}/.local"
  
  eval $(keychain --eval --nogui --noask --quiet \
    --timeout 5 \
    --dir "${HOME}/.local/keychain" \
    "$(find ~/.ssh -name 'id_*' ! -name '*.pub')" \
  ) || print_error "Keychain initialization failed."
fi
