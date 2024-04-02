room_number = 3;
if(obj_game.level == 3){
	room_number = 1;
}
if(obj_game.level == 4){
	room_number = 2;
}

audio_stop_all();
array_music = array_create(5);
	array_music[1] = snd_background_1;
	array_music[2] = snd_background_2;
	array_music[3] = snd_background_3;
	array_music[4] = snd_background_4;
	array_music[5] = snd_background_5;
audio_play_sound(array_music[obj_game.level], 1, true);