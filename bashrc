# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load all the modular configuration files
for file in ~/.bashrc.d/*.sh; do
  if [[ ! -d "${file}" ]]; then
    if [[ -r "${file}" ]]; then
      source "${file}"
    else
      print_error "Unable to read ${file}. Skipping."
    fi
  fi
done

