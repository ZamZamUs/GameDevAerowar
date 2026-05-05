draw_self();

draw_set_font(-1);
draw_set_color(c_white);

for (var i = 0; i < hp; i++)
{
    draw_sprite(spr_heart, 0, 20 + (i * 40), 20);
}

//firing
if (is_firing) {
    draw_sprite(spr_effect_3, floor(effect_frame), x - 80, y - 37);
}
if (is_firing) {
    draw_sprite(spr_effect_3, floor(effect_frame), x - 80, y - -37);
}

draw_self();