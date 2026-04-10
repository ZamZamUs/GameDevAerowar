// Kecepatan gerak
var spd = 1;

// Input arah

if(!paused){
	var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	// Normalisasi supaya diagonal tidak lebih cepat
	if (h != 0 || v != 0) {
		var len = point_distance(0, 0, h, v);
		h /= len;
		v /= len;
	}

	move_and_collide(h * spd, v * spd, oColl);

	if (h > 0) { sprite_index = PlayerR; }
	if (h < 0) { sprite_index = PlayerL; }
	if (v > 0) { sprite_index =	PlayerB; }
	if (v < 0) { sprite_index = PlayerF; }
}

// ini buat playerny bekerja dengan collison
if (place_meeting(x, y, oColl))
{
    show_debug_message("Nabrak border!");
}

// ini buat fullscreen sir

if (keyboard_check_pressed(vk_f11))
{
    window_set_fullscreen(!window_get_fullscreen());
}

// interact handler
inst = collision_circle(x, y, interact_radius, oPoint, false, true);

targetName = "headquarters"
if(currentTips < 3) {
	switch(currentTips){
		case 0: targetName = "headquarters" break;
		case 1: targetName = "upgrade" break;
		case 2: targetName = "start" break;
	}
} else {
	tips = false
}

if (inst != noone) {
	oInteract.show_interact = true
} else {
	oInteract.show_interact = false
}