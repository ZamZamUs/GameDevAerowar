image_xscale = 0.5;
image_yscale = 0.5;

var spd = 0.5;

// Arah ke mouse
direction = point_direction(x, y, mouse_x, mouse_y);

// Default animasi berhenti
image_speed = 0;

// Kalau W ditekan
if (keyboard_check(ord("W")))
{
    x += lengthdir_x(spd, direction);
    y += lengthdir_y(spd, direction);

    // Animasi jalan
    image_speed = 0.1;
}

// Rotasi
image_angle = direction;