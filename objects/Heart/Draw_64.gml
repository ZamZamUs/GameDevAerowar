var hearts = ceil(global.max_hp / 2);

for (var i = 0; i < hearts; i++)
{
    var heart_x = 60 + (i * 40);

    var hp_value = global.hp - (i * 2);

    if (hp_value >= 2)
    {
        draw_sprite(spr_heart, 0, heart_x, 20);
    }
    else if (hp_value == 1)
    {
        draw_sprite(spr_heart1, 0, heart_x, 20);
    }
    else
    {
        draw_sprite(spr_heart2, 0, heart_x, 20);
    }
}