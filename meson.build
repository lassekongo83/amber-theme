project('Amber',
        meson_version: '>= 0.51',
        license : ['GPL3'],
        default_options: ['prefix=/usr'])

sassc = find_program('sassc')

gtk_theme_dir = join_paths(get_option('datadir'), 'themes')

subdir('gtk')
subdir('gnome-shell')
subdir('xfwm4')
