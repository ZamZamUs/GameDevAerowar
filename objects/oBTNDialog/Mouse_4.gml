if(button_id == 1){
	global.mission = 1
	
	layer_set_visible("option_selection", false)
	layer_set_visible("dialog_layer", false)
	
	room_goto(Room1)
}