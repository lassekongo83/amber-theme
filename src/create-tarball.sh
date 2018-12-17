##! /bin/bash

sed -e "s/@ThemeName@/Amber/g" index.theme.in > index.theme

tar --exclude={*.scss,*.sh,*.build,assets.txt,assets.svg,*.md,gnome-shell-sass,README} -cvzf amber-theme.tar.gz {gnome-shell,gtk-3.0,gtk-2.0,xfwm4,index.theme}

rm index.theme
