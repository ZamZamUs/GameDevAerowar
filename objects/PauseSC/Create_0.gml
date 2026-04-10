current_select = 1;
current_layer_name = noone

layer_id = layer_get_id("pause")
fade_speed = 0.1
Palpha = 0

black_id = layer_sprite_get_id(layer_id, "black_panel")
pause_id = layer_text_get_id(layer_id, "pause")
resume_id = layer_text_get_id(layer_id, "resume")
mainmenu_id = layer_text_get_id(layer_id, "mainmenu")
gamelogo_id = layer_sprite_get_id(layer_id, "gamelogo")

ui_sprites = [black_id, gamelogo_id]
ui_text = [pause_id, resume_id, mainmenu_id]


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

resume_button_id = layer_text_get_id(layer_id, "resume")
menu_button_id = layer_text_get_id(layer_id, "mainmenu")