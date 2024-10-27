# dotfiles

Arch with Hyprland

<p align="center">
  <img  src="https://user-images.githubusercontent.com/73834838/228386835-de808131-3885-4ba0-975e-c4073f99d4a2.gif">
</p>

## Waybar Configuration

### Custom Modules

#### custom/prayertimes

This module displays the time remaining until the next Muslim prayer time for Egypt.

- **exec**: `/usr/bin/python3 /home/ahmed/.config/waybar/prayertimes.py`
- **format**: `ﷲ {}`
- **return-type**: `json`
- **interval**: `3600`
- **tooltip**: `true`

The old readme: [README-old.md](README-old.md)

Credits to [prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots)
