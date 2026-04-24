// draw box (STATIC — no flashing)
draw_sprite(backgrounddialog, 0, 700, 300);

// draw sprite instead of rectangle
draw_sprite(spr_command, 0, 150, 450);

// set font (bigger text)
draw_set_font(font_dialog);
draw_set_color(c_black);

// draw text
draw_text(500, 520, displayed_text);


// ---- BORDER ----
draw_set_color(c_black);


// border color
draw_set_color(c_black);

// text
draw_set_font(font_dialog);
draw_set_color(c_white);

// border color
draw_set_color(c_black);

// thickness amount
var t = 8;

// portrait box
for (var i = 0; i < t; i++) {
    draw_rectangle(140 - i, 440 - i, 410 + i, 710 + i, true);
}

// text box
for (var i = 0; i < t; i++) {
    draw_rectangle(450 - i, 500 - i, 1300 + i, 700 + i, true);
}