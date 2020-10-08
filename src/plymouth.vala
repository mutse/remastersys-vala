using Gtk;

namespace Widgets {
private Window window;

[CCode (cname = "G_MODULE_EXPORT on_cancel_btn_clicked")]
public void on_cancel_btn_clicked(Button button) {
    window.destroy();
}

public class Plymouth : Object {
    
    public Plymouth() {
        var builder = new Builder();
        builder.add_from_file("../data/plymouth.ui");
        builder.connect_signals(null);
        window = builder.get_object("window3") as Window;
        window.window_position = WindowPosition.CENTER;
        window.set_default_size(400, 300);

        var view = builder.get_object("treeview1") as TreeView;
        var listmodel = new Gtk.ListStore(2, typeof(string), typeof(string));
        view.set_model(listmodel);
        view.insert_column_with_attributes(-1, _("Name"), new CellRendererText(), "text", 0);
        view.insert_column_with_attributes(-1, _("Directory"), new CellRendererText(), "text", 1);
    }

    public void show() {
        window.show_all();
    }
}
}
