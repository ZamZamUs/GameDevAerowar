if (global.game_paused) exit;
if (!global.game_paused)
{
    game_timer -= 1;
}

if (game_timer <= 0)
{
	global.mission = noone
	global.missionActive = false
    room_goto(Room1);
}