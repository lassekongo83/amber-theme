## Amber Theme
A theme for GNOME and Xfce4.

![Amber theme](images/amber2.png?raw=true)
<sub>Screenshot Details: [Wallpaper](https://i.imgur.com/U8r1J84.png) by [Tom Haugomat](https://www.handsomefrank.com/illustrators/tom-haugomat) | [Icons](https://github.com/numixproject/numix-icon-theme-circle) | GNOME shell extension: Dash to dock</sub>

### Requirements
GTK 3.22+

* The murrine engine
  * `gtk2-engines-murrine` (Debian, Ubuntu, Mint)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (Opensuse)
  * `gtk-engine-murrine` (Arch, Manjaro, Antergos)
* The pixbuf engine
  * `gtk2-engines-pixbuf` (Debian, Ubuntu)
  * `gtk2-engines` (Fedora, Opensuse)
  * `gtk-engines` (Arch, Manjaro, Antergos)

#### Optional recommended requirements
* Ubuntu fonts (For the GNOME shell theme.)
  * `ttf-ubuntu-font-family`

<sub>Some or all of these packages may already be installed by default on some distros.</sub>

* Debian/Ubuntu/Mint - `apt install gtk2-engines-murrine gtk2-engines-pixbuf ttf-ubuntu-font-family`
* Arch/Manjaro/Antergos - `pacman -S gtk-engine-murrine gtk-engines ttf-ubuntu-font-family`
* Opensuse - `zypper in gtk2-engine-murrine gtk2-engines ubuntu-fonts`
* Fedora - `dnf install gtk-murrine-engine gtk2-engines`

## Installation

#### Option 1: Running install.sh
Make sure you have `wget` **or** `git` installed.

**With wget:**
```bash
mkdir -p ~/.themes/Amber && cd ~/.themes/Amber
wget https://github.com/lassekongo83/amber-theme/archive/master.zip
unzip master.zip
chmod +x amber-theme-master/install.sh
sh amber-theme-master/install.sh
rm -r amber-theme-master master.zip
```

**With git:**
```bash
mkdir -p ~/.themes/Amber && cd ~/.themes/Amber
git clone https://github.com/lassekongo83/amber-theme.git
sh amber-theme/install.sh
rm -r amber-theme
```

The install script will detect if you are running GNOME or Xfwm4 and exclude the `gnome-shell` or `xfwm4` folder depending on which wm you're using. It will exclude both if you don't use either.

#### Option 2: Graphical user interface
1. Download the theme: https://github.com/lassekongo83/amber-theme/archive/master.zip
2. Create the folder `~/.themes/Amber`
3. Open the `master.zip` file and navigate to the `src` folder.
4. Extract `gnome-shell`, `gtk-2.0`, `gtk-3.0`, `xfwm4` to `~/.themes/Amber`

<sub>Optional: Skip `xfwm4` if you use GNOME Shell/Skip `gnome-shell` if you use Xfce4.</sub>

Note: This option will not provide you with an `index.theme` file. It's not a necessary file, but some users may need it. Unecessary source files will also be kept. If you need an `index.theme` file you can run the `create-tarball.sh` script in `src` and extract the content of the created tarball to `~/.themes/Amber`.

#### Option 3: meson
This installation method is to try out the theme while developing it.

Make sure you have `git`, `meson`, [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages), and `sassc` installed.
```bash
git clone https://github.com/lassekongo83/amber-theme.git
cd amber-theme
meson build
sudo ninja -C build install
```
The theme will be installed in: `/usr/share/themes/Amber`

## Using the theme
Using `gnome-tweaks`. (Make sure you have `gnome-shell-extensions` installed.)

1. Go to Extensions and activate `User themes`. (You may have to restart `gnome-tweaks` after doing that for the option to swap shell theme to be available in the next step.)
2. Go to Appearance and change the theme for `Applications` and `Shell` to Amber.

Using `dconf-editor`. (Make sure you have `gnome-shell-extensions` installed and activated.)

1. To change the GTK theme: `gsettings set org.gnome.desktop.interface gtk-theme Amber`
2. To change the GNOME shell theme: `gsettings set org.gnome.shell.extensions.user-theme name 'Amber'` 

If you want to change back to the default GNOME theme run:
```bash
gsettings set org.gnome.desktop.interface gtk-theme Adwaita
gsettings set org.gnome.shell.extensions.user-theme name ''
```
A shell restart may be needed after swapping themes. <kbd>Alt</kbd> + <kbd>F2</kbd> and running <kbd>r</kbd> as command.

Xfce users can change themes in `Settings > Appearance` and `Settings > Window manager`.

## Known issues
None of these steps below are required.

#### Ubuntu Dock double indicators
The default dock in Ubuntu will give you double indicators. These can't be removed with a theme, so some manual intervention is required.

One way around this is to install the original [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/) and disable it, then change its settings using `dconf-editor` at `(org / gnome / shell / extensions / dash-to-dock / running-indicator-style)` - changing its settings should affect not only the original Dash to Dock, but also Ubuntu Dock. Another way is to remove or disable the Ubuntu Dock and use the original Dash to Dock, which is much more customizable.

#### Ubuntu dynamic panel opacity
Ubuntu changes the opacity of the panel when you maximize applications. The opacity overrides some of the default theme settings. [Here are some ways](https://askubuntu.com/questions/1012328/how-to-disable-the-dynamic-transparency-effect-of-the-dock-while-maximizing-a-wi/1012331#1012331) you can disable or modify it.

#### Left aligned maximize buttons
Left aligned maximize buttons in the titlebar will swap appearance on normal GNOME applications using client side decorations (csd). Applications that don't use csd (gnome-terminal for example) will use the right aligned appearance, even if it's left aligned. Just a minor inconsistency.

## Copying or Reusing

The GTK theme(s) and included scripts are free software licensed under the terms of the [GNU General Public License, version 3](https://www.gnu.org/licenses/gpl-3.0.txt).
