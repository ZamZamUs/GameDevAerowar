interact_radius = 10

interact_layer_id = layer_get_id("interact_layer")
pause_layer_id = layer_get_id("pause")
fade_speed = 0.1
Valpha = 0
show_interact = false

text_id = layer_text_get_id(interact_layer_id, "interact_text")
black_id = layer_sprite_get_id(pause_layer_id, "black_panel")

paused = false	

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