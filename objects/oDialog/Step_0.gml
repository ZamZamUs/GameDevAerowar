if(isDialog){
	if(is_typing){
		if (text_length < string_length(full_text)) {
			text_length += text_speed;
			layer_text_text(textID, string_copy(full_text, 1, text_length))
		} else {
			is_typing = false
		}
	}
		
	if(keyboard_check_pressed(vk_space)){
		if(is_typing){
			text_length = string_length(full_text)
			
			layer_text_text(textID, string_copy(full_text, 1, text_length))
			is_typing = false
		} else {
			index += 1
				
			if(index < array_length(dialogue)){
				full_text = dialogue[index]
				text_length = 0
				is_typing = true
			} else if(index < array_length(dialogue) + 1){
				is_typing = false
				text_length = 0
				layer_set_visible("option_selection", true)
			} else {
				isDialog = false
				is_typing = false
				index = 0
				text_length = 0
				layer_set_visible("option_selection", false)
				layer_set_visible(layerID, false)
				room_goto(Room1)
			}
		}
	}
}