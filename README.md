# Bootstrap launchers

These scripts install the private dotfiles repository and start its Homebrew bootstrap:

- `install_private.sh` uses the standard registry.
- `install_finomet.sh` uses the Finomet registry.

The Mac needs an SSH key with access to `git@github.com:m76-labs/dotfiles.git`.

Run either launcher directly:

```sh
curl -fsSL https://raw.githubusercontent.com/alaneurich/bootstrap/main/install_private.sh | bash
curl -fsSL https://raw.githubusercontent.com/alaneurich/bootstrap/main/install_finomet.sh | bash
```
