using Gtk;

[CCode (cname = "G_MODULE_EXPORT on_window1_destroy")]
public void on_window1_destroy(Window source) {
    Gtk.main_quit();
}

[CCode (cname = "G_MODULE_EXPORT on_close_clicked")]
public void on_close_clicked(Button source) {
    Gtk.main_quit();
}

[CCode (cname = "G_MODULE_EXPORT on_button3_clicked")]
public void on_button3_clicked(Button source) {
    var about_dlg = new AboutDlg(source);
    about_dlg.show();
}

[CCode (cname = "G_MODULE_EXPORT on_button11_clicked")]
public void on_button11_clicked(Button source) {
    var user_setting = new UserSetting();
    user_setting.show();
}

[CCode (cname = "G_MODULE_EXPORT on_button12_clicked")]
public void on_button12_clicked(Button source) {
    var plymouth = new Widgets.Plymouth();
    plymouth.show();
}

public static int main(string[] args) {
    Gtk.init(ref args);

    try {
        var builder = new Builder();
        builder.add_from_file("../data/remastersys.glade");
        builder.connect_signals(null);
        var window = builder.get_object("window1") as Window;
        window.window_position = WindowPosition.CENTER;
        window.set_default_size(600, 480);
        window.show_all();
        Gtk.main();
    } catch (Error e) {
        stderr.printf("could not load ui: %s\n", e.message);
        return 1;
    }

    return 0;
}

