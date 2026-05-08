other.hp -= 1;

if (other.hp <= 0)
{
    other.sprite_index = spr_explode;
    other.image_index = 0;
    other.image_speed = 0.4;

    global.score += 10;

    with (other)
    {
        alarm[0] = 10;
    }
}

instance_destroy();