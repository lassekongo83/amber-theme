# Amber Theme
A theme for GNOME and Xfce4.

![Amber theme](amber.png?raw=true)
<sub>Screenshot Details: [Wallpaper](https://i.imgur.com/U8r1J84.png) by [Tom Haugomat](https://www.handsomefrank.com/illustrators/tom-haugomat) | [Icons](https://github.com/numixproject/numix-icon-theme-circle) | GNOME shell extension: Dash to dock</sub>

### Requirements

- GNOME Shell 3.38 (Older versions can be found under the releases section.)
- GTK 3.24.13+

<sub>I can't guarantee that the themes will look as intended on older versions.</sub>

Some of these packages may already be installed by default on some distros.

* Debian/Ubuntu/Mint - `apt install gtk2-engines-murrine gtk2-engines-pixbuf ninja-build git meson sassc`
* Arch/Manjaro - `pacman -S gtk-engines gtk-engine-murrine ninja git meson sassc`
* Opensuse - `zypper in gtk2-engine-murrine gtk2-engines ninja git meson sassc`
* Fedora - `dnf install gtk-murrine-engine gtk2-engines ninja-build git meson sassc`

Other distros may have named the above packages differently.

## Installation

When the above requirements are installed, simply run these commands:
```bash
git clone https://github.com/lassekongo83/amber-theme.git
cd amber-theme
meson build
sudo ninja -C build install
```
The theme(s) will be installed in: `/usr/share/themes/`

### Updating the theme

Navigate to the `amber-theme` folder that was originally cloned. (If you removed it, do the steps above instead).

Then simply run:
```bash
git pull
sudo ninja -C build install
```

#### Changing themes

Use `gnome-tweaks` to change themes.

You can also change your GTK themes using a terminal.
```bash
# Changing the theme to Amber
gsettings set org.gnome.desktop.interface gtk-theme Amber

# Reverting the change to the default GNOME theme
gsettings set org.gnome.desktop.interface gtk-theme Adwaita
```

Xfce users can change themes in `Settings > Appearance` and `Settings > Window manager`

#### Flatpak applications

To use the theme in Flatpak applications you'll have to copy the theme(s) from /usr/share/themes to ~/.themes (Symbolic links won't work.)

As long as the version of the included GTK3 for the Flatpak app is at 3.24.x the theme should be used. Some apps may require you to change the theme in the app's settings.

#### Removing the theme(s)

To be safe from any gnome-shell crashes or weird behavior, change the gnome-shell theme to another one before running the command below.

Run `sudo rm -r /usr/share/themes/Amber`

## Copying or Reusing

The GTK theme(s) and included scripts are free software licensed under the terms of the [GNU General Public License, version 3](https://www.gnu.org/licenses/gpl-3.0.txt).
