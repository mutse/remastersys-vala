using Gtk;

public void on_window1_destroy(Window source) {
    Gtk.main_quit();
}

public void on_close_clicked(Button source) {
    Gtk.main_quit();
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

