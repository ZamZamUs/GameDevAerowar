radius = 15;

layer_id = layer_get_id("interact_layer")
fade_speed = 0.1
Valpha = 0

show_interact = false

text_id = layer_text_get_id(interact_layer_id, "interact_text")

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