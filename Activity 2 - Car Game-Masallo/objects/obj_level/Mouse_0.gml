
if(!disabled && obj_btn.x < 400){
	audio_play_sound(snd_ting, 2, false);
	obj_game.level = level;
	if(level == 1 || level == 2){
		room_goto(room_empty);
	}
	if(level == 3){
		room_goto(room_t_left);
	}
	if(level == 4){
		room_goto(room_hori);
	}
	if(level == 5){
		room_goto(room_vert);
	}
}