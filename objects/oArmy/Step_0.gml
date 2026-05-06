if (is_dead) exit;

var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += h * move_speed;
y += v * move_speed;

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

// Shoot
if (shoot_timer > 0) shoot_timer -= 1;

if (keyboard_check(vk_space) && shoot_timer <= 0)
{
    var b1 = instance_create_layer(x, y - 10, "Instances", oBullet);
    b1.hspeed = shoot_speed;

    var b2 = instance_create_layer(x, y + 10, "Instances", oBullet);
    b2.hspeed = shoot_speed;

    shoot_timer = shoot_delay;
}

// Invincible
if (invincible_timer > 0)
{
    invincible_timer -= 1;
}
