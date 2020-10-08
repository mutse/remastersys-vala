remastersys_files = files(
    'main.vala',
    'about_dialog.vala',
    'user_setting.vala',
    'plymouth.vala',
)

remastersys_deps = [
    gtk_dep,
    glib_dep,
    gmodule_dep,
    m_dep
]

executable(meson.project_name(),
    remastersys_files,
    dependencies: remastersys_deps,
    install: true
)
