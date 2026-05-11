global.hp -= 1;

with (other)
{
    instance_destroy();
}

if (global.hp <= 0)
{
    if (!instance_exists(obj_death_menu))
    {
        global.game_paused = true;

        instance_create_layer(
            0,
            0,
            "Instances",
            obj_death_menu
        );
    }
}