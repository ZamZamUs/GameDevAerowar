if (instance_exists(oArmy))
{
    if (keyboard_check_pressed(vk_escape))
    {
        paused = !paused;

        global.game_paused = paused;
    }
}

if (paused)
{
    if (keyboard_check_pressed(vk_up))
    {
        menu_index--;
    }

    if (keyboard_check_pressed(vk_down))
    {
        menu_index++;
    }

    if (menu_index < 0) menu_index = 2;
    if (menu_index > 2) menu_index = 0;

    if (keyboard_check_pressed(vk_enter))
    {
        switch(menu_index)
        {
            case 0:
                paused = false;
            break;

            case 1:
                paused = false;
                room_restart();
            break;

            case 2:
                paused = false;
				global.mission = noone
                room_goto(Room1);
            break;
        }
    }
}

// animasi
if (paused)
{
    menu_scale = lerp(menu_scale, 1, 0.15);
}
else
{
    menu_scale = lerp(menu_scale, 0, 0.15);
}