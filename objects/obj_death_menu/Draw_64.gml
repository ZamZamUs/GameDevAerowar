var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

// background transparan
draw_set_alpha(0.8);

draw_sprite_ext(
    spr_death_bg,
    0,
    cx,
    cy,
    menu_scale,
    menu_scale,
    0,
    c_white,
    1
);

// reset alpha
draw_set_alpha(1);

// text
draw_set_font(Text);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(cx, cy - 40, "YOU DIED");
draw_text(cx, cy + 10, "Press R to Restart");
draw_text(cx, cy + 50, "Press ESC to Quit");