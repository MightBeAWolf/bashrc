# Initialize the keychain, if available
if [[ -z "${SSH_AUTH_SOCK}" ]]; then
  if  command -v keychain >/dev/null 2>&1; then
    # Make sure there is a user ~/.local dir
    mkdir -p "${HOME}/.local"
    eval $(keychain --eval --nogui --noask --quiet \
      --timeout 5 \
      --dir "${HOME}/.local/keychain" \
      "$(find ~/.ssh -name 'id_*' ! -name '*.pub')" \
    ) || print_error "Keychain initialization failed."
  fi
fi
