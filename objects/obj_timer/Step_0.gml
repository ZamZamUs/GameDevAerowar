if (!global.game_paused)
{
    game_timer -= 1;
}

if (game_timer <= 0)
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