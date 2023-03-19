
// Lose game
if (state == ghostState.scatter || state == ghostState.chase || state == ghostState.come_out)
{
	with (obj_pacman)
	{
		audio_play_sound(snd_death, 1, false);
		instance_destroy();
		instance_create_layer(x, y, layer, obj_pacmanD);
	}
}
// Got eaten
else if (state == ghostState.frightening)
{
	state = ghostState.eaten;
	global.startGame = false;
	alarm[0] = room_speed * 0.3;
	audio_play_sound(snd_eatghost,1,0);
}

