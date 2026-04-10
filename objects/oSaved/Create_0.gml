alarm[0] = game_get_speed(gamespeed_fps) * 120;

show_saving_icon = false

layer_id = layer_get_id("savedinformation")
fade_speed = 0.01
Palpha = 0

saved_id = layer_text_get_id(layer_id, "saved_tittle")

fade = function(current, target, speedto){
    if (current < target) {
        current += speedto;
        if (current > target) current = target;
		show_debug_message(current)
    }
    else if (current > target) {
        current -= speedto;
        if (current < target) current = target;
		show_debug_message(current)
    }
    
    return current;
}