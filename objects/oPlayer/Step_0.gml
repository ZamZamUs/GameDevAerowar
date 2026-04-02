// Kecepatan gerak
var spd = 1;

// Input arah
var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Normalisasi supaya diagonal tidak lebih cepat
if (h != 0 || v != 0) {
    var len = point_distance(0, 0, h, v);
    h /= len;
    v /= len;
}

move_and_collide(h * spd, v * spd, oColl);

if (h > 0) { sprite_index = Sprite1; }
if (h < 0) { sprite_index = Sprite2; }
if (v > 0) { sprite_index = Sprite3; }
if (v < 0) { sprite_index = Sprite4; }

if (place_meeting(x, y, oColl))
{
    show_debug_message("Nabrak border!");
}