// GAME OVER TEXT
if (is_dead)
{
    draw_set_color(c_red);
    draw_text(room_width/2 - 40, room_height/2, "GAME OVER");
}

// draw effect ONLY when firing
if (is_firing) {
    draw_sprite(spr_effet, floor(effect_frame), x - -8, y - 23);
}

if (is_firing) {
    draw_sprite(spr_effet, floor(effect_frame), x - -9, y + 20);
}


// Mesin
draw_sprite(
    Mesin,
    floor(engine_frame),
    x - 80,
    y - 10
);

draw_sprite(
    Mesin,
    floor(engine_frame),
    x - 80,
    y - -7
);

// draw player
draw_self();
