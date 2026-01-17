# dotfiles

This repository contains my dotfiles for my laptop running Arch Linux.

This config includes scripts that assume you have the required software installed.

The configuration is very minimal and will not fit your needs.

## Getting started

Install the [`chezmoi`](https://chezmoi.io) tool and run this command to download and apply the configuration.

```bash
chezmoi init --apply RichardDorian
```

## Bash aliases

In order to get bash aliases, add this to your `.bashrc`

```sh
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
```

## Systemd services

I use systemd for starting various services like hyprland, wpaperd etc. This repo includes them. For new setup, include them by running

```sh
systemctl --user enable hyprland.service
systemctl --user enable hypridle.service
systemctl --user enable wpaperd.service
systemctl --user enable vicinae.service
```

The `hyprland.service` makes hyprland start upon login. `wpaperd.service` are automatically started by `hyprland-session.target`.

## Sound

For sound, I use `pipewire` and `wireplumber`.

### MPRIS & Bluetooth

In order for bluetooth headset controls (play, pause, ...) make sure to have the `bluez-utils` package and enable the `mpris-proxy` user systemd service.