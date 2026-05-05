if (keyboard_check_pressed(ord("R"))) {
    global.game_paused = false;
    room_restart();
}

if (keyboard_check_pressed(ord("M"))) {
    global.game_paused = false;
    room_goto(Gameplay); // your menu room
}

show_debug_message("Menu exists: " + string(instance_exists(obj_death_menu)));