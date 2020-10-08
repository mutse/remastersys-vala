using Gtk;

private Window window;

[CCode (cname = "G_MODULE_EXPORT on_button1_clicked")]
public void on_button1_clicked(Button button) {
    stdout.printf("clicked\n");
    window.destroy();
}

public class UserSetting : Object {
    //private Window window;

    public UserSetting() {
        var builder = new Builder();
        builder.add_from_file("../data/usersetting.ui");
        builder.connect_signals(null);
        window = builder.get_object("window2") as Window;
        window.window_position = WindowPosition.CENTER;
        window.set_default_size(400, 300);
        
        var view = builder.get_object("treeview1") as TreeView;
        var listmodel = new Gtk.ListStore(2, typeof(string), typeof(string));
        view.set_model(listmodel);
        view.insert_column_with_attributes(-1, _("User"), new CellRendererText(), "text", 0);
        view.insert_column_with_attributes(-1, _("Home"), new CellRendererText(), "text", 1);
    }

    public void show() {
        window.show_all();
    }

}
