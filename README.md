# dotfiles

Arch with Hyprland

<p align="center">
  <img  src="https://user-images.githubusercontent.com/73834838/228386835-de808131-3885-4ba0-975e-c4073f99d4a2.gif">
</p>


The old readme: [README-old.md](README-old.md)

Credits to [prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots)

## Notification Center

A new notification center feature has been added to view all not-dismissed notifications in Dunst with Hyprland.

### Keybinding

To open the notification center, use the following keybinding:

```
$mainMod+N
```

### Script

The `show-notifications.sh` script is used to open the notification center. It lists all notifications using `dunstctl` and displays them in a `rofi` menu.

### Configuration

Ensure the following configuration is set in your Dunst and Hyprland configuration files:

#### Dunst Configuration

In `Home/.config/dunst/dunst.conf` and `Home/.config/dunst/dunstrc`, update the `dmenu` setting to use `rofi` for displaying notifications:

```
dmenu = /usr/bin/rofi -dmenu -p dunst:
```

#### Hyprland Configuration

In `Home/.config/hypr/keybindings.conf`, add the following keybinding under the "Custom scripts" section:

```
bind = $mainMod, N, exec, $scrPath/show-notifications.sh # open notification center
```
