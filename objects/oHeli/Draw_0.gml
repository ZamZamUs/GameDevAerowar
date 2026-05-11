// draw effect FIRST (so it's underneath)
draw_sprite(spr_effect, floor(effect_frame), x - 64, y + -1);

// then draw the heli on top
draw_self();

