// typing effect
if (is_typing) {
    if (char_index < string_length(full_text)) {
        char_index += text_speed;
        displayed_text = string_copy(full_text, 1, char_index);
    } else {
        displayed_text = full_text;
        is_typing = false;
    }
}

// advance dialogue
if (keyboard_check_pressed(vk_space)) {
    
    // if still typing → finish instantly
    if (is_typing) {
        displayed_text = full_text;
        char_index = string_length(full_text);
        is_typing = false;
    }
    else {
        // next line
        index++;
        
        if (index < array_length(dialogue)) {
            full_text = dialogue[index];
            char_index = 0;
            displayed_text = "";
            is_typing = true;
        }
        else {
            // end dialogue
			room_goto(Room1)
        }
    }
}

