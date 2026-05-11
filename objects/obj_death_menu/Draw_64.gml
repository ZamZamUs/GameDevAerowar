// transparent sprite only
draw_set_alpha(5);

draw_sprite_ext(
    spr_death_bg,
    0,
    room_width / 2,
    room_height / 2,
    menu_scale,
    menu_scale,
    0,
    c_white,
    0.8
);

// reset alpha so text is normal
draw_set_alpha(1);

// draw text fully visible
draw_set_font(Text);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2, room_height/2 - 40, "YOU DIED");
draw_text(room_width/2, room_height/2 + 10, "Press R to Restart");
draw_text(room_width/2, room_height/2 + 50, "Press M for Menu");