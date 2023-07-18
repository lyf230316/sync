use fltk::{*, window::Window, prelude::{WidgetBase, GroupExt, WidgetExt, WindowExt}};

fn main() {
    let mut app = app::App::default();
    let mut window = Window::new(100, 100, 600, 600, "main").center_screen();
    window.end();
    window.show();
    window.center_screen();
    app.run().unwrap();
}