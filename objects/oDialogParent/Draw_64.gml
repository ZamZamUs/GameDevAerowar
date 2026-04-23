// draw box (STATIC — no flashing)
draw_set_color(c_black);
draw_rectangle(100, 400, 700, 550, false);

// draw sprite instead of rectangle
draw_sprite(spr_command, 0, 100, 400);

// set font (bigger text)
draw_set_font(font_dialog);
draw_set_color(c_white);

// draw text
draw_text(500, 520, displayed_text);

// draw sprite
draw_sprite(spr_command, 0, 100, 400);

// ---- BORDER ----
draw_set_color(c_white);

// draw sprite
draw_sprite(spr_command, 0, 100, 400);

// border color
draw_set_color(c_white);

// text
draw_set_font(font_dialog);
draw_set_color(c_white);

// border color
draw_set_color(c_white);

// thickness amount
var t = 6;

// portrait box
for (var i = 0; i < t; i++) {
    draw_rectangle(80 - i, 390 - i, 420 + i, 700 + i, true);
}

// text box
for (var i = 0; i < t; i++) {
    draw_rectangle(450 - i, 500 - i, 1300 + i, 700 + i, true);
}