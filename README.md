# `dotfiles`

My personal configuration files for the tools I use on a daily basis.

## Laptop

As is, the configuration files are made for a desktop computer. However, in tools like Hyprland or HyprPanel, features designed for laptops are configured (such as the battery module or backlight level shortcuts).

> [!NOTE]  
> Do not forget to enable laptop features when setting up a laptop.

## Wallpapers

I do not own copyright for the wallpapers I use, therefore I cannot include them here.

## git

### Credential helper

The configuration for `git` includes a credential helper (which is `manager` at the time of writing). Do not forget to install [GCM](https://github.com/git-ecosystem/git-credential-manager) and its dependencies (`gpg` and `pass`).

> [!NOTE]  
> `pass` uses `gpg` for encryption meaning a GPG key is required for the helper to work so credentials are stored safely.


### Commit signing

`git` is also configured to sign commits using a GPG key. Add the GPG key id in the config created in the [Credential Helper](#credential-helper) section.

> [!NOTE]  
> Do not forget to add the public key on GitHub so it doesn't show as "Unverified".
