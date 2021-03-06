using Gtk;

public class AboutDlg : AboutDialog {
    public Gtk.Widget? focus_widget;
        
    public AboutDlg(Gtk.Widget? widget) {
        focus_widget = widget;

        set_program_name("Remastersys");
        set_version("3.0.6-1");
        string[] authors = {"Mutse Young <yyhoo2.young@gmail.com>", null};
        set_authors(authors);
        set_website("https://github.com/mutse/remastersys-vala");
        string translators = _("Simplified Chinese - Mutse Young <yyhoo2.young@gmail.com>");
        set_translator_credits(translators);
        set_comments(_("Backup Your Ubuntu System"));
        set_copyright("(C) 2020 Mutse Young");
            
        destroy.connect((w)=> {
            if (focus_widget != null) {
                focus_widget.grab_focus();
            }
        });

        set_size_request(400, 300);
    }
}

