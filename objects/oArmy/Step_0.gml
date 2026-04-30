// =====================
// MOVEMENT (WASD)
// =====================
var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h * move_speed;
y += v * move_speed;

// Biar tidak keluar room
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

// =====================
// TIMER (HARUS DIKURANGI 1, BUKAN 5)
// =====================
if (shoot_timer > 0)
{
    shoot_timer -= 0.5;   // Ganti dari 5 jadi 1!
}

// =====================
// SHOOT (SPACE DITAHAN)
// =====================
if (keyboard_check(vk_space) && shoot_timer <= 0)
{
    // Peluru player
    var bullet_left = instance_create_layer(x - 0, y - 13, "Instances", oBullet);
    bullet_left.hspeed = shoot_speed;
    bullet_left.vspeed = 0;
    
    var bullet_right = instance_create_layer(x - 0, y - 6, "Instances", oBullet);
    bullet_right.hspeed = shoot_speed;
    bullet_right.vspeed = 0;
    
    shoot_timer = shoot_delay;
}
