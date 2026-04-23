if (showing_dialog && variable_struct_exists(current_dialog, "massage")) {

    var text_x = 1;
    var border = 3;
    var padding = 10;

    // 🔧 get text height
    var text_height = string_height(current_dialog.massage);

    // 🔧 sprite size
    var sprite_w = sprite_get_width(spr_command);
    var sprite_h = sprite_get_height(spr_command);

    // 🔧 box height
    var height = max(text_height, sprite_h) + padding * 2;

    // 🔧 dialog position (bottom)
    var y_pos = display_get_gui_height() - height;

    // 🔧 text X (after sprite)
    text_x = sprite_w + (padding * 2);

    draw_set_alpha(alpha);

    // 🟩 BOX
    draw_set_color(c_black);
    draw_rectangle(0, y_pos, display_get_gui_width(), y_pos + height, false);

    draw_set_color(c_white);
    draw_rectangle(border, y_pos + border, display_get_gui_width() - border, y_pos + height - border, false);

    draw_set_color(c_black);
    draw_rectangle(border * 2, y_pos + border * 2, display_get_gui_width() - border, y_pos + height - border * 2, false);

    // 🧍 SPRITE
    var sprite_x = border * 3;
    var sprite_y = y_pos + border * 3;
    draw_sprite(spr_command, 0, sprite_x, sprite_y);

    // ✅ TEXT IN THE MIDDLE (THIS IS THE FIX)
    var text_y = y_pos + (height / 2) - (text_height / 2);

    draw_set_color(c_white);
    draw_text_ext(
        text_x,
        text_y,
        current_dialog.massage,
        16,
        display_get_gui_width() - sprite_w - 300
    );

    // ✨ FADE
    alpha = lerp(alpha, 1, 0.06);
}