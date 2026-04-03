
interact_radius = 10;

paused = false;

update_paused = function(){
	if (paused) {
		layer_set_visible("pause", true);
	} else {
		layer_set_visible("pause", false);
	}
}

update_paused();