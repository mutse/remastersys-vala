project(
    'remastersys',
    'c', 'vala',
    version: '0.1.0',
)

lib_version = '2.0'

add_project_arguments([
        '-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()),
        '-DG_LOG_DOMAIN="remastersys"'
    ],
    language: 'c'
)

i18n = import('i18n')
pkg = import('pkgconfig')

glib_dep = dependency('glib-2.0', version: '>=2.32')
gio_dep = dependency('gio-2.0')
gobject_dep = dependency('gobject-2.0')
gtk_dep = dependency('gtk+-3.0', version: '>=3.10')
gmodule_dep = dependency('gmodule-2.0')
m_dep = meson.get_compiler('c').find_library('m', required : false)

#subdir('data')
#subdir('lib')
subdir('src')
subdir('po')

#meson.add_install_script('meson/post_install.py')
