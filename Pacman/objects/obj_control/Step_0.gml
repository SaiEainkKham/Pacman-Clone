
// The amount of food
count = instance_number(obj_food);

// Press F5 to restart
if (keyboard_check(vk_f5))	game_restart();

// If none of food left, the game freeze and restart
if (count == 0)
{
	global.startGame = false;
	if (sound) { audio_play_sound(snd_victory,1,0); sound = false; }
	victory = true;
	if (keyboard_check_pressed(vk_anykey)) room_restart();
}

// Toggle ghost target point on GUI
if (keyboard_check_pressed(vk_f2))	global.target_drawing = !global.target_drawing;
if (keyboard_check_pressed(vk_escape))	game_restart();
if (keyboard_check_pressed(vk_f11)) FullScreen();

