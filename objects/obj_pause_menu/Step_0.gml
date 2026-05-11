if (keyboard_check_pressed(vk_escape))
{
    global.game_paused = !global.game_paused;

    if (global.game_paused)
    {
        if (!instance_exists(obj_pause_menu))
        {
            instance_create_layer(
                0,
                0,
                "Instances",
                obj_pause_menu
            );
        }
    }
    else
    {
        with (obj_pause_menu)
        {
            instance_destroy();
        }
    }
}