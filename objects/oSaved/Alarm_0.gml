save_game();

show_debug_message("Autosave Berhasil: " + string(current_time));

alarm[0] = game_get_speed(gamespeed_fps) * 60;

show_saving_icon = true;
alarm[1] = game_get_speed(gamespeed_fps) * 3;