# .bashrc.d Configuration Files

This repository contains a collection of shell scripts and configurations
that enhance the functionality of the Bash shell. It provides a modular way to
organize `.bashrc` customizations in a structured manner.


## Installation

To set up the custom `.bashrc` configurations, follow these steps:

1. Clone the repository to your home directory:

   ```sh
   git clone https://github.com/MightBeAWolf/bashrc.git "${HOME}/.bashrc.d"
   ```

2. Create a soft link for the `bashrc` file to your home directory:

   ```sh
   ln -s "${HOME}/.bashrc.d/bashrc" "${HOME}/.bashrc"
   ```

3. Use the various installation scripts in "${HOME}/.bashrc.d/scripts/installers"

4. Reload your `.bashrc`:

   ```sh
   source "${HOME}/.bashrc"
   ```

## Usage

After installation, the shell scripts in the `.bashrc.d` directory will be
executed automatically when you start a new Bash session. Each script is
prefixed with a number that determines its execution order:

- `00` scripts are for setting up functions and paths.
- `01` scripts handle environment variables.
- `02` scripts provide various configurations like aliases, editor settings, keychain, LS_COLORS, and custom prompts.
- `03` scripts are specific configurations for tools like Helix and the `less` command.

You can edit these files to add or remove custom configurations as per your preference.

## Customization

To add new scripts or configurations:

1. Create a new `.sh` file in the `.bashrc.d` directory.
2. Prefix the file with an order number (e.g., `04-custom.sh`).
3. Add your custom shell commands or configurations to the file.
4. Reload your `.bashrc` to apply the changes.

## Scripts and Installers

In the `scripts/installers` directory, there are several scripts to help you
install common tools:

- `00-rust.sh`: Installs the Rust programming language and its package manager, Cargo.
- `00-starship.sh`: Installs the Starship prompt for a prettier and more informative command line.
- `01-helix.sh`: Installs the Helix editor, a modern text editor.
- `01-rust-cli-tools.sh`: Installs useful CLI tools written in Rust.

To run an installer script, navigate to the `scripts/installers` directory and execute the desired script:

```sh
cd "${HOME}/.bashrc.d/scripts/installers"
./00-rust.sh
```


