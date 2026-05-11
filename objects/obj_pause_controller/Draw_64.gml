if (menu_scale > 0.01)
{
    var cx = display_get_gui_width() / 2;
    var cy = display_get_gui_height() / 2;

    // background
    draw_set_alpha(0.7 * menu_scale);
    draw_set_color(c_black);

    draw_rectangle(
        0,
        0,
        display_get_gui_width(),
        display_get_gui_height(),
        false
    );

    draw_set_alpha(1);

    // animasi sprite
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

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    draw_set_color(c_white);

    draw_text_transformed(
        cx,
        cy - 100,
        "PAUSED",
        menu_scale,
        menu_scale,
        0
    );

    for (var i = 0; i < 3; i++)
    {
        if (i == menu_index)
        {
            draw_set_color(c_yellow);
        }
        else
        {
            draw_set_color(c_white);
        }

        draw_text_transformed(
            cx,
            cy + (i * 50),
            menu[i],
            menu_scale,
            menu_scale,
            0
        );
    }
}