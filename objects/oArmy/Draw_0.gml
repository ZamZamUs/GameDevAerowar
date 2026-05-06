// Draw army sprite
draw_self();

// Gambar pesawat
draw_sprite_ext(spr_player, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);

// Api mesin
var back_x = x - 20;
var back_y = y;

draw_set_color(c_orange);
draw_circle(back_x - 5, back_y, 4, false);

draw_set_color(c_yellow);
draw_circle(back_x - 4, back_y, 3, false);

draw_set_color(c_red);
draw_circle(back_x - 3, back_y, 2, false);

// =====================
// GAME OVER TEXT
// =====================
if (is_dead)
{
    draw_set_color(c_red);
    draw_text(room_width/2 - 40, room_height/2, "GAME OVER");
}