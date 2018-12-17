##!/bin/bash

THEME_NAME="Amber"

mkdir -p ~/.themes/$THEME_NAME

sed -e "s/@ThemeName@/$THEME_NAME/g" src/index.theme.in > ~/.themes/$THEME_NAME/index.theme
cp LICENSE ~/.themes/$THEME_NAME/

# Checks if the user is using gnome-shell, xfwm, or none of them.
if [ "$(pidof gnome-shell)" ]; then
	cp -r src/{gnome-shell,gtk-3.0,gtk-2.0} ~/.themes/$THEME_NAME/
	# Remove the source files
	rm -r ~/.themes/$THEME_NAME/gnome-shell/{gnome-shell-sass,*.build,*.scss,*.sh}
	rm -r ~/.themes/$THEME_NAME/gtk-2.0/{*.build,*.sh,assets.txt,assets.svg,README}
	rm -r ~/.themes/$THEME_NAME/gtk-3.0/{*.build,*.scss,*.sh,assets.txt,assets.svg,*.md}
	echo "$THEME_NAME was installed in ~/.themes/$THEME_NAME/"
	exit 1
elif [ "$(pidof xfwm4)" ]; then
	cp -r src/{gtk-3.0,gtk-2.0,xfwm4} ~/.themes/$THEME_NAME/
	rm -r ~/.themes/$THEME_NAME/gtk-2.0/{*.build,*.sh,assets.txt,assets.svg,README}
	rm -r ~/.themes/$THEME_NAME/gtk-3.0/{*.build,*.scss,*.sh,assets.txt,assets.svg,*.md}
	rm -r ~/.themes/$THEME_NAME/xfwm4/{*.build,*.sh,assets.txt,assets.svg}
	echo "$THEME_NAME was installed in ~/.themes/$THEME_NAME/"
	exit 1
else
	cp -r src/{gtk-3.0,gtk-2.0} ~/.themes/$THEME_NAME/
	rm -r ~/.themes/$THEME_NAME/gtk-2.0/{*.build,*.sh,assets.txt,assets.svg,README}
	rm -r ~/.themes/$THEME_NAME/gtk-3.0/{*.build,*.scss,*.sh,assets.txt,assets.svg,*.md}
	echo "$THEME_NAME was installed in ~/.themes/$THEME_NAME/"
  exit 1
fi
