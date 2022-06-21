global.startGame = false;
audio_play_sound(snd_beginning,1,0);
var len = audio_sound_length(snd_beginning);
alarm[0] = room_speed * len;
