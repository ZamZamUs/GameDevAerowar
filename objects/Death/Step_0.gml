if (keyboard_check_pressed(ord("R"))) {
    global.game_paused = false;
    room_restart();
}

if (keyboard_check_pressed(ord("M"))) {
    global.game_paused = false;
    room_goto(rm_menu); // your main menu room
}