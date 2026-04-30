var data = scr_load_data("save.json")

if(array_length(data) < 3){
	array_push(data, {"level": level, "point": point, "dialog": dialog, "tips": false, "posX": oPlayer.x, "posY": oPlayer.y})
	scr_save_data(data, "save.json")
} else {
	show_debug_message("Kamu telah mencapai maksimum save " + string(array_length(data)))
}